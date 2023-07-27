import 'package:assign_navigator/pages/page_one.dart';
import 'package:assign_navigator/utils/routes_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageFive extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text("Page Fifth"),
            TextButton(onPressed: (){
              Navigator.pushNamedAndRemoveUntil(context,RouteName.homePage, (route) => false);
            }, child: Text("Initial Page")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, RouteName.pageOne);
            }, child: Text("Goto Page One")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, RouteName.pageTwo);
            }, child: Text("Goto Page Two")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, RouteName.pageThree);
            }, child: Text("Goto Page Three")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, RouteName.pageFour, arguments: {
                "name":"Shubham",
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