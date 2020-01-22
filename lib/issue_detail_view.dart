import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'issue.dart';

class IssueDetailView extends StatelessWidget {
  final Issue issue;

  IssueDetailView({Key key, this.issue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Center(
            child: WebView(
              initialUrl: issue.htmlUrl)),
    ));
  }
}
