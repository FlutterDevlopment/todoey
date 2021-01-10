import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoey/components/tasks_list.dart';
import 'package:todoey/model/taskData.dart';
import 'package:todoey/screens/bottom_sheet_screen.dart';
import 'package:provider/provider.dart';

const String FontNameDefault = 'Montserrat';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC58BBB),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => BottomContainer(),
          );
        },
        backgroundColor: Color(0xFFCD97C4),
        child: Icon(
          Icons.add,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: 45.0, left: 30.0, right: 20.0, bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30.0,
                    child: Icon(
                      Icons.list,
                      size: 40.0,
                      color: Color(0xFFCD97C4),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    "Todoey",
                    // Montserrat
                    style: GoogleFonts.lora(
                      textStyle: TextStyle(
                        color: Color(0xFF783A6C),
                        fontSize: 50.0,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Text(
                    "${Provider.of<TasksManager>(context).taskLength} Tasks",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Color(0xFFFFF1FD),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: TasksList(),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
