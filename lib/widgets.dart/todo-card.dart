// ignore_for_file: prefer_const_constructors, sort_child_properties_last, file_names

import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  final String vartitle;
  final bool doneORnot;
  final Function changeStatus;
  final int index;
  const TodoCard(
      {super.key,
      required this.vartitle,
      required this.doneORnot,
      required this.changeStatus,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changeStatus(index);
      },
      child: FractionallySizedBox(
        widthFactor: 0.9,
        child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 33),
            padding: EdgeInsets.all(22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  vartitle,
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                Icon(
                  doneORnot ? Icons.check : Icons.close,
                  size: 27,
                  color: doneORnot ? Colors.green : Colors.red,
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(209, 224, 224, 0.2),
              borderRadius: BorderRadius.circular(11),
            )),
      ),
    );
  }
}
