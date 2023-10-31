import 'package:flutter/material.dart';
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
           backgroundColor: Colors.blue,
           title: Text('Row-Column: 7'),
           leading: Icon(Icons.home),
           centerTitle: true,
           actions: [
             Icon(Icons.print),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Icon(Icons.settings),
             ),
           ],
         ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(

            )
          ],
        ),
      ),
      body: Center(
        child: Container(
          width: 250.0,
          height: 200.0,
          color: Colors.deepOrangeAccent,
          child: Center(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('This is body Container', style: TextStyle(
              color:Colors.white,
              fontSize: 20.0
            ),
            ),
          )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }
}
