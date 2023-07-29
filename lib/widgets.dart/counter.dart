


// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
 
final int allTodos;
final int allcompleted;
const Counter({Key? key,required this.allcompleted , required this.allTodos});


  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.only(top: 27),
              child: Text("$allcompleted/$allTodos",
                  style: TextStyle(
                    fontSize: 44,
                    color: allcompleted == allTodos  ?  Colors.greenAccent   :  Colors.white ,

                    fontWeight: FontWeight.bold,
                  )),
            );
  }
}
