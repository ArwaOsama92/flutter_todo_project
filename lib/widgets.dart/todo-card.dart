// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class TodoCard extends StatelessWidget {
  
final String vartitle;
final doneORnot;
const TodoCard({super.key, required this.vartitle,required this.doneORnot });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
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
                          doneORnot ? Icons.check : Icons.close ,

                        size: 27,
                        color: doneORnot ? Colors.green :Colors.red ,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(209, 224, 224, 0.2),
                    borderRadius: BorderRadius.circular(11),
                  )
                  ),
            );
  
}
}