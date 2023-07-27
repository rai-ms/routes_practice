import 'package:assign_navigator/pages/home_page.dart';
import 'package:assign_navigator/pages/page_five.dart';
import 'package:assign_navigator/pages/page_four.dart';
import 'package:assign_navigator/pages/page_one.dart';
import 'package:assign_navigator/pages/page_three.dart';
import 'package:assign_navigator/pages/page_two.dart';
import 'package:assign_navigator/utils/routes_name.dart';
import 'package:flutter/material.dart';

class NavigationRoutes
{
  static Route<dynamic> generateRoute(RouteSettings routeSettings)
  {
    switch (routeSettings.name)
    {
      case RouteName.homePage:
        return MaterialPageRoute(builder: (context) => const MyHomePage(title: "Initial Page",));
      case RouteName.pageOne:
        return MaterialPageRoute(builder: (context) => const PageOne());
      case RouteName.pageTwo:
        return MaterialPageRoute(builder: (context) => const PageTwo());
      case RouteName.pageThree:
        return MaterialPageRoute(builder: (context) => PageThree());
      case RouteName.pageFour:
        return MaterialPageRoute(builder: (context) => PageFour(data: routeSettings.arguments as Map));
      case RouteName.pageFive:
        return MaterialPageRoute(builder: (context) => const PageFive());
      default:
        return MaterialPageRoute(builder: (context) => Scaffold(
          appBar: AppBar(),
          body: const Center(
            child: Text("Page Not Found 404!", textAlign: TextAlign.center,),
          ),
        ));
    }
  }
}