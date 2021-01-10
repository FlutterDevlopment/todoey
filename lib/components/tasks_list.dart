import 'package:flutter/material.dart';
import 'package:todoey/model/taskData.dart';
import 'tasks_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksManager>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final tasks = taskData.tasksList[index];
            return TasksTile(
                taskTitle: tasks.name,
                onPressed: tasks.isDone,
                toggleStatus: (checkBoxStatus) {
                  taskData.updateTask(tasks);
                },
                longPressCallBack: () {
                  Provider.of<TasksManager>(context, listen: false)
                      .tasksRemove(tasks);
                });
          },
          itemCount: taskData.taskLength,
        );
      },
    );
  }
}
