import 'dart:math';

import 'package:flutter_getx_mvc/models/todo_model.dart';
import 'package:get/get.dart';

class TodoController extends GetxController {

  var todoItems = <TodoModel>[].obs;
  int get totalItems => todoItems.length;

  @override
  void onInit() {
    super.onInit();
    fetchItems();
  }

  void fetchItems() async {
    todoItems.add(TodoModel());
  }

  void addNewItem() {
    todoItems.add(TodoModel(
      title: generateRandomString(10),
      subTitle: generateRandomString(20)
    ));
  }

  String generateRandomString(int len) {
    var r = Random();
    String randomString =String.fromCharCodes(List.generate(len, (index)=> r.nextInt(33) + 89));
    return randomString;
  }

  void deleteItem(TodoModel todoModel) {
    todoItems.removeAt(todoItems.indexOf(todoModel));
  }

}