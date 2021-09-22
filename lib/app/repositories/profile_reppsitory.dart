import 'package:get/get.dart';
import 'package:test_ftm/app/models/commit_model.dart';
import 'package:test_ftm/app/providers/github_provider.dart';

class ProfileRepository {
  late GitHubApliClient _gitHubApiClient;

  ProfileRepository() {
    this._gitHubApiClient = Get.find<GitHubApliClient>();
    print(_gitHubApiClient);
  }
  Future<List<CommitModel>> getRepos() {
    return _gitHubApiClient.getRepos();
  }
}
