import 'package:flutter/material.dart';
import 'package:homework2/screens/sliver_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SliverListScreen(),
      //home: const CardScreen(),
      // home: const HomeScreen(),
    );
  }
}
