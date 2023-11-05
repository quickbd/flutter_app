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
       body:  OrientationBuilder (
           builder: (  context,   orientation) {
             if(orientation == Orientation.portrait){
               return Container(
                 width: MediaQuery.of(context).size.width,
                 color: Colors.yellowAccent,
                 child: Center(
                   child: Column(
                     children: [
                       FlutterLogo(),
                       Text('This is portrait mode')
                     ],
                   ),
                 ),
               );
             } else  return Container(
               width: MediaQuery.of(context).size.width,
               color: Colors.orange,
               child: Center(
                 child: Column(
                   children: [
                     FlutterLogo(),
                     Text('This is Landscape mode')
                   ],
                 ),
               ),
             );
           })
     );
  }
}

