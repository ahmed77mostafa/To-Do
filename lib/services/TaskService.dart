import 'package:dio/dio.dart';
import 'package:to_do/models/TaskModel.dart';

class TaskService{
  Dio dio = Dio();

  Future<TaskModel> getTaskService() async {
    try {
      Response response = await dio.get("https://dummyjson.com/todos/user/13");
      if(response.statusCode == 200){
        return TaskModel.fromJson(response.data);
      }
      else{
        throw Exception('Failed to load task data.....');
      }
    }
    catch(e){
      throw Exception('Error $e');
    }
  }
}