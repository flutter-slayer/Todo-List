import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';




class Calendar extends StatelessWidget {
  CalendarController _controller=  CalendarController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor:  Colors.white.withOpacity(0.9),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title:Text('Calendar',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black,fontSize: 20,
            fontFamily:"Segoe UI"),),
        centerTitle: true,
      ),
      body: Center(
        child: TableCalendar(calendarController:_controller),
      ),
    );
  }
}
