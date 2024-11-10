import 'package:flutter/material.dart';
import 'package:to_do/models/TaskModel.dart';
import 'package:to_do/services/TaskService.dart';

class TaskProvider extends ChangeNotifier{
  TaskModel? taskModel;

  Future<void> getService() async{
    taskModel = await TaskService().getTaskService();
    notifyListeners();
  }
}