import 'package:assign_navigator/utils/routes_name.dart';
import 'package:flutter/material.dart';

class PageThree extends StatelessWidget
{
  const PageThree({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const Text("Page Third"),
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
                "name":"Rai",
                "no":3});
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