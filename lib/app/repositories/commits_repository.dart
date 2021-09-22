import 'package:get/get.dart';
import 'package:test_ftm/app/models/commit_model.dart';

import 'package:test_ftm/app/providers/github_provider.dart';

class CommitsRepository {
  late GitHubApliClient _gitHubApiClient;

  CommitsRepository() {
    this._gitHubApiClient = Get.find<GitHubApliClient>();
    print(_gitHubApiClient);
  }

  Future<List<Commit>> getAllCommits() {
    return _gitHubApiClient.getAllCommits();
  }
}
