import 'package:flutter/material.dart';
import '../model/todo.dart';
import 'package:google_fonts/google_fonts.dart';

class TodoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;
  
  const TodoItem({super.key, required this.todo, required this.onToDoChanged, required this.onDeleteItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        onTap: () {
        //print('Clicked on the task'),
        onToDoChanged(todo);
        
        },

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.black,
        ),
        title: Text(
          todo.todoText ?? '', // Use model data instead of hardcoded string
          style: GoogleFonts.courierPrime(
            fontSize: 16,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: IconButton(
          iconSize: 18,
          icon: const Icon(Icons.delete, color: Colors.red),
          onPressed: () {
            //print('clicked delete');
            onDeleteItem(todo.id);
          }
        ),
      ),
    );
  }
}