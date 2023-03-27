import 'package:daily_app/constants/colors.dart';
import 'package:daily_app/model/todomodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ToDoItem extends StatelessWidget {
  final ToDo toDo;
  final onToDoChanged;
  final onDeleteitem;
  const ToDoItem(
      {Key? key,
      required this.toDo,
      required this.onToDoChanged,
      required this.onDeleteitem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onToDoChanged(toDo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          toDo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: tbBlue,
        ),
        title: Text(
          toDo.todoText!,
          style: TextStyle(
              fontSize: 16,
              color: tbBlack,
              decoration: toDo.isDone ? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              color: tbRed, borderRadius: BorderRadius.all(Radius.circular(5))),
          child: IconButton(
              onPressed: () {
                onDeleteitem(toDo.id);
              },
              color: Colors.white,
              iconSize: 18,
              icon: Icon(Icons.delete)),
        ),
      ),
    );
  }
}
