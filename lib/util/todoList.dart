import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Todolist extends StatefulWidget {
  String title;
  bool TaskCompleted;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? deleteFunction;
  Todolist({
    super.key,
    required this.title,
    required this.TaskCompleted,
    required this.onChanged,
    required this.deleteFunction
  });

  @override
  State<Todolist> createState() => _TodolistState();
}

class _TodolistState extends State<Todolist> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0,),
          child: Slidable(

            endActionPane: ActionPane(
              motion: const StretchMotion(
              ),
              children: [
                // Delete button
                SlidableAction(
                  onPressed: (context) {
                    widget.deleteFunction!(context);
                  },
                  icon: Icons.delete,
                  foregroundColor: Colors.red,
                  backgroundColor: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
              ],
            ),
            child: Container(
                padding: const EdgeInsets.all(9.0),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12),
                ),
               child: Row(
                 children: [
                   Checkbox(checkColor: Colors.black,
                     activeColor: Colors.white,
                     value:widget.TaskCompleted,
                       onChanged: widget.onChanged,),
                   Text(widget.title,
                     style: TextStyle(fontSize: 20,
                     decoration: widget.TaskCompleted
                         ? TextDecoration.lineThrough
                         : null,),
                   ),

                 ],
               ),
                ),
          ),
    );
  }
}
