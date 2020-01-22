import 'package:flutter/material.dart';

import 'issue_list_view.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Issues',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IssueListView(title: 'Flutter Demo Home Page'),
    );
  }
}
