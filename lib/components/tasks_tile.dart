import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  TasksTile(
      {this.onPressed,
      this.taskTitle,
      this.toggleStatus,
      this.longPressCallBack});
  final bool onPressed;
  final String taskTitle;
  final Function toggleStatus;
  final Function longPressCallBack;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: longPressCallBack,
      child: ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w400,
            decoration: onPressed ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          activeColor: Color(0xFF783A6C),
          value: onPressed,
          onChanged: toggleStatus,
        ),
      ),
    );
  }
}
