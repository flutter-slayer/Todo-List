

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:todo_list/Controllers/TodoControllers.dart';
import 'package:todo_list/widgets/calendar.dart';

import 'Profile.dart';
import 'TodoScreens.dart';
import 'package:get/get.dart';



class HomeScreen extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TodoController todoController = Get.put(TodoController());
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff239DE4),

        bottomNavigationBar: CurvedNavigationBar(
          height:55.0,
          color: Colors.white.withOpacity(0.6),
          backgroundColor: Color(0xff239DE4),
          items: <Widget>[




            IconButton(
              icon: Icon(Icons.calendar_today_outlined, color:Colors.white,size: 30),

              onPressed: () { Get.to(Calendar());},

            ),

              Icon(Icons.add_circle_outline_sharp,color:Color(0xff239DE4), size: 40),




            IconButton(
              icon:Icon(Icons.supervised_user_circle_rounded,color:Colors.white, size: 30),

              onPressed: () { Get.to(Profile());},

            ),
          ],
           index: 1,
          onTap: (index) {

            Get.to(TodoScreen()
            );

            //Handle button tap
          },
        ),
        body: Column(

          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(

                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      CircleAvatar(
                        radius: 35.0,
                        backgroundImage: AssetImage('images/avatar.png'),
                      ),
                       SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                      Text('Hello,',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.white.withOpacity(0.6),fontSize: 20,
                          fontFamily:"Segoe UI"),),
                      Text('Tom Keen',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 23,
                          fontFamily:"Segoe UI"),),
                    ],

                  ),
                  Image(image:AssetImage('images/oclock.png'),
                    height: 130,
                    width: 130,),
                ],
              ),
            ),
            Container(
              height: 350,
                width: 400,

              child: Obx(() => ListView.separated(
                  itemBuilder: (context, index) => Dismissible(
                    key: UniqueKey(),
                    onDismissed: (_) {
                      var removed = todoController.todos[index];
                      todoController.todos.removeAt(index);
                      Get.snackbar('Task removed',
                          'The task "${removed.text}" was successfully removed.',
                          mainButton: FlatButton(
                            child: Text('Undo'),
                            onPressed: () {
                              if (removed.isNull) {
                                return;
                              }
                              todoController.todos.insert(index, removed);
                              removed = null;
                              if (Get.isSnackbarOpen) {
                                Get.back();
                              }
                            },
                          ));
                    },
                    child: Ink(
                      color: Colors.white.withOpacity(0.6),
                      child: ListTile(
                        title: Text(todoController.todos[index].text,
                            style: (todoController.todos[index].done)
                                ? TextStyle(
                                color: Colors.red,
                                decoration: TextDecoration.lineThrough)
                                : TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 23,
                                fontFamily:"Segoe UI")
                        ),
                        onTap: () {
                          Get.to(TodoScreen(
                            index: index,
                          ));
                        },
                        leading: Checkbox(
                          value: todoController.todos[index].done,
                          onChanged: (v) {
                            var changed = todoController.todos[index];
                            changed.done = v;
                            todoController.todos[index] = changed;
                          },
                        ),
                        trailing: Icon(Icons.chevron_right),
                      ),
                    ),
                  ),
                  separatorBuilder: (_, __) => Divider(),
                  itemCount: todoController.todos.length)),

            ),













        ]),
         ),

    );
  }
}

