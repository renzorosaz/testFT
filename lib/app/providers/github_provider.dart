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

  Future<List<Commit>> getAllCommits() async {
    var urlGitAllComitsFromUserAndRep =
        urlBase + "repos/" + user + repo + "commits";

    final resp = await _netUtil.get(urlGitAllComitsFromUserAndRep);
    Get.log(resp.toString());

    final List<dynamic> decodedData = json.decode(resp.body);
    final List<Commit> commits = [];
    if (decodedData == null) return [];
    if (decodedData.length > 0) {
      //var dd = List<Commit>.from(decodedData.map((x) => Commit.fromJson(x)));
      //return decodedData.map<Commit>((obj) => Commit.fromJson(obj)).toList();
      return decodedData.map<Commit>((obj) => Commit.fromJson(obj)).toList();
    } else {
      throw new Exception("error");
    }
  }
}
