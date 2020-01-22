import 'package:hello_world/github_client.dart';
import 'package:hello_world/issue_detail_view.dart';
import 'package:flutter/material.dart';

import 'issue.dart';

class IssueListView extends StatefulWidget {
  IssueListView({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _IssueListView createState() => _IssueListView();
}

class _IssueListView extends State<IssueListView> {
  List<Issue> _issues = <Issue>[];

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final res = await GithubClient.fetchIssues();
    setState(() {
      _issues = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            if (index >= _issues.length) {
              return null;
            }
            final issue = _issues[index];
            return ListTile(
                leading: ClipOval(child: Image.network(issue.avatarUrl)),
                title: Text(issue.title),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => IssueDetailView(issue: issue)));
                });
          },
        ));
  }
}
