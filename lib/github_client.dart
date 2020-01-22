import 'dart:convert';

import 'package:http/http.dart' as http;

import 'issue.dart';


class GithubClient {
  static Future<List<Issue>> fetchIssues() async {
    final res =
      await http.get('https://api.github.com/repositories/31792824/issues');
    if (res.statusCode == 200) {
      final List<dynamic> jsonArray = json.decode(res.body);
      return jsonArray.map((json) => Issue.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load issue');
    }
  }
}
