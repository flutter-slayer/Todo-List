import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:todo_list/Controllers/TodoControllers.dart';
import 'package:todo_list/Models/todo.dart';
import 'package:get/get.dart';

class TodoScreen extends StatelessWidget {
  final TodoController todoController = Get.find();
  final int index;

  TodoScreen({this.index});

  @override
  Widget build(BuildContext context) {
    String text = '';
    if (!this.index.isNull) {
      text = todoController.todos[index].text;
    }
    TextEditingController textEditingController =
    TextEditingController(text: text);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              child: TextField(
                controller: textEditingController,
                autofocus: true,
                decoration: InputDecoration(
                    hintText: 'Add your task',
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none),
                style: TextStyle(
                  fontSize: 25.0,
                ),
                keyboardType: TextInputType.multiline,
                maxLines: 999,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RaisedButton(
                  child: Text('Cancel'),
                  color: Color(0xfff44336),
                  onPressed: () {
                    Get.back();
                  },
                ),
                RaisedButton(
                  child: Text((this.index.isNull) ? 'Add' : 'Edit'),
                  color: Color(0xff239DE4),
                  onPressed: () {
                    if (this.index.isNull) {
                      todoController.todos
                          .add(Todo(text: textEditingController.text));
                    } else {
                      var editing = todoController.todos[index];
                      editing.text = textEditingController.text;
                      todoController.todos[index] = editing;
                    }

                    Get.back();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
