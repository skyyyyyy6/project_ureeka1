import 'package:flutter/material.dart';

void main() => runApp(const TodoApp());

class TodoApp extends StatelessWidget{
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Todo App List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue,),
      home: const TodoList(),
    );
  }
}

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final List<String> _todos = [];
  final TextEditingController _controller = TextEditingController();

  void _addTodo() {
    final text = _controller.text.trim();
    if (text.isNotEmpty){
      setState(() {
        _todos.add(text);
        _controller.clear();
      });
    }
  }

  void _confirmDelete(int index){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          title: const Text('Delete Text'),
          content: const Text('Are you sure you want to delete this todo?'),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: (){
                setState(() {
                  _todos.removeAt(index);
                });
                Navigator.of(context).pop();
              },
              child: const Text('Delete'),
            ),
          ],
        );
      }
    );
  }


  Widget _buildTodoItem(String task, int index){
    return Card(
      margin: const EdgeInsets.symmetric(vertical:4),
      child: ListTile(
        title: Text(task),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () => _confirmDelete(index),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text(
        'To do List',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: 
      Padding(
        padding: const EdgeInsets.all(50),
        child:
          ListView.builder(
            itemCount: _todos.length,
            itemBuilder: (context, index){
            return _buildTodoItem(_todos[index], index);
            },
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(
            context: context,
            builder: (context){
              return AlertDialog(
                title: const Text('Add Todo'),
                content: TextField(
                  controller: _controller,
                  decoration: const InputDecoration(hintText: 'Enter todo Item'),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      _addTodo();
                      Navigator.of(context).pop();
                    },
                    child: const Text('Add'),
                  ),
                ],
              );
            },
          );
        },
        tooltip: 'Add Todo',
        child: const Icon(Icons.add),
        ),
    );
  }
}
