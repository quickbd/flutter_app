import 'package:flutter/material.dart';
class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    double _width =  MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.blue,
           title: Text('Row-Column: 7'),
           //leading: Icon(Icons.home),
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
              width: _width,
              height: 250.0,
              child: FlutterLogo(size: 40.0),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              trailing: Icon(Icons.arrow_forward),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text('About'),
              trailing: Icon(Icons.arrow_forward),
            ),

          ],
        ),
      ),
      body: Center(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,  //start/end
        mainAxisAlignment: MainAxisAlignment.spaceAround,  //spaceBetween/center
        children:[
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
              color: Colors.deepOrangeAccent,
                //width: _width,
                child: Row(
                  children: [
                     Container(
                       height: 200.0,
                       width: 150.0,
                       color: Colors.blue,
                       child: Center(
                         child: Column(
                           children: [
                             Text('1', style: TextStyle(
                                 color:Colors.white,
                                 fontSize: 20.0
                             )
                             ),Text('Multi Line', style: TextStyle(
                                 color:Colors.white,
                                 fontSize: 20.0
                             )
                             )
                           ],
                         ),
                       ),
                     ),
                    SizedBox(height: 10.0),
                    Container(
                      height: 200.0,
                      width: 150.0,
                      color: Colors.deepOrange,
                      child: Center(
                        child: Text('2', style: TextStyle(
                            color:Colors.white,
                            fontSize: 20.0
                        ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      height: 200.0,
                      width: 150.0,
                      color: Colors.greenAccent,
                      child: Center(
                        child: Text('3', style: TextStyle(
                            color:Colors.white,
                            fontSize: 20.0
                        ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      height: 200.0,
                      width: 150.0,
                      color: Colors.black12,
                      child: Center(
                        child: Text('5', style: TextStyle(
                            color:Colors.white,
                            fontSize: 20.0
                        ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),

                    Container(
                      height: 200.0,
                      width: 150.0,
                      color: Colors.deepOrange,
                      child: Center(
                        child: Text('5', style: TextStyle(
                            color:Colors.white,
                            fontSize: 20.0
                        ),
                        ),
                      ),
                    ),
                  ],
                ),
         ),
            ),
          ),
          SizedBox(height: 10.0),
          Expanded(
            flex: 3,
            child: Container(
              width: _width,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 10.0),
          Expanded(
            child: Container(
              height: 200.0,
              width: _width,
              color: Colors.deepOrangeAccent,
              child:  Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('This is 3rd Container', style: TextStyle(
                      color:Colors.white,
                      fontSize: 20.0
            ),
            ),
                  ),
                ],
              ),),
          ),
        ]
        )

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }
}
