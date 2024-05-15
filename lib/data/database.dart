import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  //reference box
  final _myBox = Hive.box('mybox');

  //run this method if this is the first time ever opening the app
  void createInitialData() {
    toDoList = [
      ["hello kitty", false],
      ["sample task 2", false],
    ];
  }

  //load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
