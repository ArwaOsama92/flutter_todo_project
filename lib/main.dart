import 'package:flutter/material.dart';
import 'package:flutter_todo_project/widgets.dart/todo-card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoApp(),
    );
  }
}

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class Task {
String title;
bool status;
Task({
required this.title,
required this.status,
});

}







class _TodoAppState extends State<TodoApp> {

List allTasks = [
Task(title: "Publish video", status: false),
Task(title: "Learn English", status: true),
Task(title: "GYM", status: false),
Task(title: "call mom", status: false),


];

addnewtask(){
setState(() {
  allTasks.add(
    Task(title: myController.text, status: false)
  );
});
}

final myController = TextEditingController();








  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.add),
        onPressed: (){
          showDialog(
            context: context, 
            builder: ( BuildContext context) {
              return Dialog(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: Container(
                  padding: EdgeInsets.all(22),
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        controller: myController,
                          maxLength: 20,
                          decoration: InputDecoration(
                            hintText: "Add New Task"
                          ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextButton(onPressed: (){
                        addnewtask();
                        Navigator.pop(context);
                      },
                      
                       child: Text("ADD", style: TextStyle(fontSize: 22),))
                    
                    ],
                  ),
              
              
              
                  ),
              );
            },
            );
        }),




        backgroundColor: Color.fromRGBO(58, 66, 86, 0.7),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromRGBO(58, 66, 86, 1),
          title: Text(
            "To Do App",
            style: TextStyle(
                fontSize: 33, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                  ...allTasks.map((item) => TodoCard(
                    vartitle : item.title,
                    doneORnot : item.status
                  ))

          
        
          ],

        ));
  }
}
