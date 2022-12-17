import 'package:alura_flutter_curso_1/components/task.dart';

class TaskDao {
  static const String tableSql = 'CREATE TABLE $_tablename('
      '$_name TEXT, '
      '$_difficulty INTEGER, '
      '$_image TEXT)';

  static const String _tablename = "taskTable";
  static const String _name = "name";
  static const String _difficulty = "difficulty";
  static const String _image = "image";

  // save(Tasks tarefa) async {}
  // Future<List<Tasks>> findAll() async {}
  // Future<List<Tasks>> find(String nomeDaTarefa) async {}
  // delete(String nomeDaTarefa) async {}
}
