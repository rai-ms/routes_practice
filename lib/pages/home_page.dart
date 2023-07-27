import 'package:assign_navigator/utils/routes_name.dart';
import 'package:assign_navigator/utils/routes_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              Navigator.pushNamed(context, RouteName.pageOne,);
            }, child: Text("Goto Page One")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, RouteName.pageTwo);
            }, child: Text("Goto Page Two")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, RouteName.pageThree);
            }, child: Text("Goto Page Three")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, RouteName.pageFour, arguments: {"no": 12, "name": "Raju"});
            }, child: Text("Goto Page Four")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, RouteName.pageFive);
            }, child: Text("Goto Page Five")),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
