import 'package:assign_navigator/utils/routes_name.dart';
import 'package:flutter/material.dart';

class PageFour extends StatelessWidget
{
  var data;
  int? no;
  String name = "";
  PageFour({super.key, this.name = "Ashish",this.no  = 1, required this.data});
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
            }, child: const Text("Initial Page")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, RouteName.pageOne);
            }, child: const Text("Goto Page One")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, RouteName.pageTwo);
            }, child: const Text("Goto Page Two")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, RouteName.pageThree);
            }, child: const Text("Goto Page Three")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, RouteName.pageFour, arguments: {
                "name":"Anurag",
                "no":3}
              );
            }, child: const Text("Goto Page Four")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, RouteName.pageFive);
            }, child: const Text("Goto Page Five")),
          ],
        ),
      ),
    );
  }
}
