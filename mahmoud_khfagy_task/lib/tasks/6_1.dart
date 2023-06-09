import 'package:flutter/material.dart';

void main() {
  runApp(TasksApp());
}

class TasksApp extends StatelessWidget {
  const TasksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Demo"),
      ),
      drawer: Drawer(
        semanticLabel: "Welcome to Drawer",
        child: Column(
          children: [
            SizedBox(
              height: 36,
            ),
            Container(
              height: 100,
              child: Text(
                "Welcome to Drawer",
                style: TextStyle(color: Colors.green, fontSize: 24),
              ),
            ),
            Divider(),
            ListTile(
              title: Text("Item 1"),
            ),
            ListTile(
              title: Text("Item 2"),
            )
          ],
        ),
      ),
    );
  }
}
