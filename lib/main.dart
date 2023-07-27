import 'package:assign_navigator/pages/home_page.dart';
import 'package:assign_navigator/pages/page_five.dart';
import 'package:assign_navigator/pages/page_four.dart';
import 'package:assign_navigator/pages/page_one.dart';
import 'package:assign_navigator/pages/page_three.dart';
import 'package:assign_navigator/pages/page_two.dart';
import 'package:assign_navigator/utils/routes_name.dart';
import 'package:assign_navigator/utils/routes_navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RouteName.homePage,
      onGenerateRoute: NavigationRoutes.generateRoute,
    );

  }
}
