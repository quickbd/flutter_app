import 'package:flutter/material.dart';
class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage2> {
  List<String> images= ['assets/images/1.jpg','assets/images/2.jpg','assets/images/3.jpg','assets/images/4.jpg','assets/images/5.jpg','assets/images/6.jpg','assets/images/7.jpg'];
  @override
  Widget build(BuildContext context) {
    double _width =  MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.blue,
           title: Text('Image Listview: 8'),
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
      body: ListView.separated(
          shrinkWrap: true,
          itemCount: images.length,
          separatorBuilder: (context, child){
            return SizedBox(height: 14.0);
          },
          itemBuilder: (context, index){
            return Image.asset(
                fit:BoxFit.cover,
                images[index]
            );
          }
      )

    );
  }
}
