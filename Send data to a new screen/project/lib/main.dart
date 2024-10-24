import 'package:flutter/material.dart';

class Todo {
  final String title;
  final String description;

  const Todo(this.title, this.description);
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TodoScreen(
      todos: List.generate(20, (i) =>
      Todo("Todo $i", "A description of what needs to be done for Todo $i"),)
    ),
  ),
);
}

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key, required this.todos});

  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Todos"),
        ),
        body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(todos[index].title),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  DetailScreen(todo: todos[index]),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.todo});

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Center(
        child: Text(todo.description),
      ),
    );
  }
}