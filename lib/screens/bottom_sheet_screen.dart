import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/taskData.dart';

class BottomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTask;
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  "Add Task",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Color(0xFF783A6C),
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              TextField(
                autofocus: true,
                cursorColor: Color(0xFF783A6C),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFF783A6C),
                    ),
                  ),
                ),
                onChanged: (value) {
                  newTask = value;
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              FlatButton(
                color: Color(0xFF783A6C),
                minWidth: 150.0,
                height: 40,
                onPressed: () {
                  Provider.of<TasksManager>(context, listen: false)
                      .tasksAdd(newTask);
                  Navigator.pop(context);
                },
                child: Text(
                  "Add",
                  style: TextStyle(color: Colors.white, fontSize: 17.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
