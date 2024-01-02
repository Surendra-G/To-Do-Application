import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
  //reference hive box
  final _mybox = Hive.box('mybox');

  // runing this code if user opens the app for the first time
  void createInitiaData() {
    toDoList = [
      ['Make Tutorials', false],
      ['Do Exercise', false],
    ];
  }

  //we need to load the data from the database
  void loadData() {
    toDoList = _mybox.get("ToDoList");
  }

  //we also need to update the data to our database
  void updateData() {
    _mybox.put('ToDoList', toDoList);
  }
}
