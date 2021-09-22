import 'dart:convert';
import 'package:get/get.dart';
import 'package:test_ftm/app/data/network_util.dart';
import 'package:test_ftm/app/models/commit_model.dart';
import 'package:flutter/foundation.dart' as foundation;

import 'api_provider.dart';

class GitHubApliClient extends GetxService with ApiClient {
  NetworkUtil _netUtil = NetworkUtil();

  String urlBase = "https://api.github.com/";
  String user = "renzorosaz/";
  String repo = "testFT/";

  GitHubApliClient() {
    this.urlBase = urlBase;
  }

  Future<GitHubApliClient> init() async {
    this.urlBase = urlBase;
    return this;
  }

  Future<List<CommitModel>> getRepos() async {
    return [];
  }

  Future<List<CommitModel>> getAllCommits() async {
    var urlGitAllComitsFromUserAndRep =
        urlBase + "repos/" + user + repo + "commits";

    final resp = await _netUtil.get(urlGitAllComitsFromUserAndRep,
        headers: {"Authorization": "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"});

    Get.log(resp.toString());

    final List<dynamic> decodedData = json.decode(resp.body);
    final List<CommitModel> commits = [];
    if (decodedData.length > 0) {
      decodedData.forEach((item) {
        final prodTemp = CommitModel.fromJson(item);
        commits.add(prodTemp);
      });
      print(commits);
      return commits;
    } else {
      throw new Exception("error");
    }
  }
}
