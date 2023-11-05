import 'package:flutter/material.dart';


class GetPage extends StatefulWidget {
  const GetPage({super.key});

  @override
  State<GetPage> createState() => _GetPageState();
}


class _GetPageState extends State<GetPage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Layout Builder'),
       ),
       body:   Container(
             child: Column(
               children: [

                 ElevatedButton(onPressed: (){}, child: Text('Elevated Button'),
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.orangeAccent
                 ),),
                 TextButton(onPressed: (){}, child: Text('Text Button', style: TextStyle(
                     color:Colors.white,
                     fontSize: 20.0
                 ),), style: IconButton.styleFrom(
                     backgroundColor: Colors.greenAccent,

                 ),),
                 IconButton(onPressed: (){}, icon: Icon(Icons.home,  size: 60.0,   color:Colors.orangeAccent,

                 ),
                 style: IconButton.styleFrom(
                   backgroundColor: Colors.greenAccent
                 ),),

               ],
             ),

       ),
     );
  }
}


Widget _webView(){
  return Row(
    children: [
      FlutterLogo(),
      Text('This is Desktop mode')
    ],
  );
}

Widget _tabView(){
  return Column(
    children: [
      FlutterLogo(),
      Text('This is Tab mode')
    ],
  );
}

Widget _mobileView(){
  return Column(
    children: [
      FlutterLogo(),
      Text('This is mobile mode')
    ],
  );
}



