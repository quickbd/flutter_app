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
       body:  LayoutBuilder (
           builder: (  context,   constraints) {
             if(constraints.maxWidth > 1000){
               return _webView();
             }else if(constraints.maxWidth > 600){
               return _tabView();
             }else return _mobileView();
           })
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



