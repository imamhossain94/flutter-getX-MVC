import 'package:flutter_getx_mvc/models/todo_model.dart';
import 'package:get/get.dart';

class TodoController extends GetxController {

  var todoItems = <TodoModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchItems();
  }

  void fetchItems() async {
    todoItems.add(TodoModel());
  }
}