import 'package:flutter/material.dart';
import 'package:flutter_getx_mvc/controllers/todo_controller.dart';
import 'package:get/get.dart';

class TodoPage extends StatelessWidget {
  TodoPage({Key? key}) : super(key: key);

  final todoController = Get.put(TodoController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter GetX MVC Todo Application"),
          elevation: 5,
        ),
        body: GetX<TodoController>(builder: (controller) {
          return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: controller.todoItems.length,
              itemBuilder: (context, index) {
                return todoItem(
                    title: controller.todoItems[index].title ?? "",
                    subTitle: controller.todoItems[index].subTitle ?? "",
                    onPressed: () {
                      controller.deleteItem(controller.todoItems[index]);
                    });
              });
        }),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            todoController.addNewItem();
          },
          label: Obx(() => Text(
                todoController.totalItems.toString(),
                style: const TextStyle(fontSize: 24),
              )),
          icon: const Icon(Icons.add),
        ),
      ),
    );
  }


  Widget todoItem({String? title, String? subTitle, VoidCallback? onPressed}) {
    return Card(
      color: Colors.redAccent,
      elevation: 5,
      child: ListTile(
        title:  Text(
          title!, style: const TextStyle(color: Colors.white),
        ),
        subtitle: Text(subTitle!, style: const TextStyle(color: Colors.white),),
        trailing: const Icon(
          Icons.delete,
          color: Colors.black,
        ),
        onTap: onPressed,
      ),
    );
  }


}
