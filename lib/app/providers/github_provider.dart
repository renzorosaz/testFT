import 'dart:convert';
import 'package:get/get.dart';
import 'package:test_ftm/app/data/network_util.dart';
import 'package:test_ftm/app/models/commit_model.dart';

import 'api_provider.dart';

class GitHubApliClient extends GetxService with ApiClient {
  NetworkUtil _netUtil = NetworkUtil();

  String urlBase = "https://api.github.com/";
  String user = "renzorosaz/";
  String repo = "testFT/";

  //https://api.github.com/repos/renzorosaz/testFT/commits

  Future<List<Commit>> getAllCommits() async {
    var urlGitAllComitsFromUserAndRep =
        urlBase + "repos" + user + repo + "commits";

    final resp = await _netUtil.get(urlGitAllComitsFromUserAndRep);
    final List<dynamic> decodedData = json.decode(resp.body);
    final List<Commit> commits = [];
    if (decodedData == null) return [];
    decodedData.forEach((commit) {
      final prodTemp = Commit.fromJson(commit);
      commits.add(prodTemp);
    });
    print(commits);
    return commits;
  }
}
