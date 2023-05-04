import 'package:flutter/material.dart';


class TodoCard extends StatelessWidget {
  const TodoCard({super.key});

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
                        "breakfast",
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                      Icon(
                        Icons.close,
                        size: 27,
                        color: Colors.red,
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