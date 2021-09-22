import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:test_ftm/app/models/commit_model.dart';
import 'package:test_ftm/app/modules/commits/controllers/commits_controller.dart';
import 'package:test_ftm/app/modules/commits/widgets/commit_grid_item_widget.dart';
import 'package:test_ftm/app/modules/global_widgets/circular_loading_widget.dart';
import 'package:test_ftm/app/providers/github_provider.dart';
import 'package:flutter_staggered_grid_view/src/widgets/staggered_grid_view.dart';

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
        body: RefreshIndicator(
          onRefresh: () async {
            GitHubApliClient().getAllCommits();
          },
          child: Container(
              child: FutureBuilder<List<Commit>>(
            initialData: [],
            future: GitHubApliClient().getAllCommits(),
            builder: (
              _,
              snapshot,
            ) {
              List<Commit>? listCom = snapshot.data;
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
                        return Text(listCom[i].toString());
                      });
                } else {
                  return const Text('Empty data');
                }
              } else {
                return Text('State: ${snapshot.connectionState}');
              }
            },
          )),
        ));
  }
}
