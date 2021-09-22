import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_ftm/app/models/commit_model.dart';
import 'package:test_ftm/app/modules/commits/controllers/commits_controller.dart';
import 'package:test_ftm/app/modules/commits/widgets/commit_grid_item_widget.dart';
import 'package:test_ftm/app/providers/github_provider.dart';

class CommitsView extends GetView<CommitsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Commits", style: Get.textTheme.headline6),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: Container(
            child: RefreshIndicator(
          onRefresh: () {
            return GitHubApliClient().getAllCommits();
          },
          child: FutureBuilder<List<CommitModel>>(
            initialData: [],
            future: GitHubApliClient().getAllCommits(),
            builder: (
              _,
              snapshot,
            ) {
              List<CommitModel>? listCom = snapshot.data;
              print(snapshot.connectionState);
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return const Text('Error');
                } else if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: listCom!.length,
                      itemBuilder: (_, i) {
                        return CommitsGridItemWidget(
                          commit: listCom[i],
                        );
                      });
                } else {
                  return const Text('Empty data');
                }
              } else {
                return Text('State: ${snapshot.connectionState}');
              }
            },
          ),
        )));
  }
}
