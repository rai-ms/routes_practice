import 'package:assign_navigator/utils/routes_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageFour extends StatelessWidget
{
  var data;
  int? no;
  String name = "";
  PageFour({this.name = "Ashish",this.no  = 1, required this.data});
  @override
  Widget build(BuildContext context)
  {
    if(data != null)
      {
        name = data['name'];
        no = data['no'];
      }
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text("Page 4th \n$name is name and no is $no", textAlign: TextAlign.center,),
            TextButton(onPressed: (){
              Navigator.pushNamedAndRemoveUntil(context, RouteName.homePage, (route) => false);
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
                "name":"Anurag",
                "no":3}
              );
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
