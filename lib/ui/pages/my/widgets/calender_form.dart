import 'package:flutter/material.dart';

class CalendarForm extends StatefulWidget {
  @override
  State<CalendarForm> createState() => CalendarState();
}

class CalendarState extends State<CalendarForm> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      child: ElevatedButton(
        onPressed: () async {
          final selectedDate = await showDatePicker(
            context: context,
            initialDate: date,
            firstDate: DateTime(2000),
            lastDate: DateTime.now(),
            initialEntryMode: DatePickerEntryMode.calendarOnly,
          );
          if (selectedDate != null) {
            setState(() {
              date = selectedDate;
            });
          }
        },
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(Colors.white),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "${date.year.toString()}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
            style: TextStyle(color: Colors.black),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
