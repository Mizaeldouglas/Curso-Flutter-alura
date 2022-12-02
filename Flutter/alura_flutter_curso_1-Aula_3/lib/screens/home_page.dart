import 'package:alura_flutter_curso_1/components/task.dart';
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
      body: ListView(
        children: const [
          Tasks('Aprender Flutter', 'assets/dash.png', dificuldade: 3),
          Tasks('Andar de Bike', 'assets/bike.webp', dificuldade: 2),
          Tasks('Meditar', 'assets/meditar.jpeg', dificuldade: 5),
          Tasks('Ler', 'assets/livro.jpg', dificuldade: 4),
          Tasks('Jogar', 'assets/jogar.jpg', dificuldade: 1),
          SizedBox(
            height: 80,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const FormScreen()));
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
