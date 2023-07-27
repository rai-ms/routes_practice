import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/routes_name.dart';

class PageOne extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text("Page One"),
            TextButton(onPressed: (){
              Navigator.pushNamedAndRemoveUntil(context, RouteName.homePage, (route) => false);
            }, child: Text("InitialPage")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, RouteName.pageTwo);
            }, child: Text("Goto Page Two")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, RouteName.pageThree);
            }, child: Text("Goto Page Three")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context,RouteName.pageFour, arguments: {
                "name":"Mayank",
                "no":3});
            }, child: Text("Goto Page Four")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, RouteName.pageFive);
            }, child: Text("Goto Page Five")),
          ],
        ),
      ),
    );
  }
}