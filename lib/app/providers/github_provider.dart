import 'package:get/get.dart';
import 'package:test_ftm/app/models/commit_model.dart';

import 'api_provider.dart';

class GitHubApliClient extends GetxService with ApiClient {
  String urlBase = "https://api.github.com";
  String user = "renzorosaz";
  String repo = "testFT";

  Future<List<Commit>> getAllCommits() async {}
}
