import 'package:alura_flutter_curso_1/components/task.dart';
import 'package:alura_flutter_curso_1/data/task_dao.dart';
import 'package:alura_flutter_curso_1/data/task_inherited.dart';
import 'package:alura_flutter_curso_1/screens/form_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarefas'),
        leading: Container(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 70),
        child: FutureBuilder<List<Tasks>>(
            future: TaskDao().findAll(),
            builder: ((context, snapshot) {
              List<Tasks>? items = snapshot.data;
              return ListView.builder(
                  itemCount: items!.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Tasks tarefa = items[index];
                    return tarefa;
                  });
            })),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (contextNew) => FormScreen(
                        taskContext: context,
                      )));
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
