import 'package:flutter/material.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter GetX MVC Todo Application"),
        ),
        body: Container(
          child: Column(
            children: [
              todoItem(
                title: "Hello World",
                subTitle: "Welcome to programming",
                onPressed: () {

                }
              ),
              todoItem(
                  title: "Hello World",
                  subTitle: "Welcome to programming",
                  onPressed: () {

                  }
              )
            ],
          )
        ),
        floatingActionButton:
            FloatingActionButton.extended(
                onPressed: (){},
                label: Text("0", style: TextStyle(fontSize: 24),),
                icon: const Icon(Icons.add),
            ),
      ),
    );
  }


  Widget todoItem({String? title, String? subTitle, VoidCallback? onPressed}) {
    return Card(
      color: Colors.blueGrey,
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
