class Issue {
  final String title;
  final String avatarUrl;
  final String htmlUrl;

  Issue({this.title, this.avatarUrl, this.htmlUrl});

  factory Issue.fromJson(Map<String, dynamic> json) {
    return Issue(
      title: json['title'],
      avatarUrl: json['user']['avatar_url'],
      htmlUrl: json['html_url'],
    );
  }
}
