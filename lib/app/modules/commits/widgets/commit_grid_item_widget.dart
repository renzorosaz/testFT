import 'package:flutter/material.dart';
import 'package:test_ftm/app/common/ui.dart';
import 'package:test_ftm/app/models/commit_model.dart';

class CommitsGridItemWidget extends StatelessWidget {
  final CommitModel? commit;

  CommitsGridItemWidget({this.commit});
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
      decoration: Ui.getBoxDecotarion(),
      child: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                child: Text(
                  commit!.author!.login.toString(),
                  style: Theme.of(context).textTheme.bodyText1,
                  softWrap: false,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  commit!.commit!.url.toString(),
                  style: Theme.of(context).textTheme.bodyText2,
                  softWrap: false,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
            child: Text(
              commit!.commit!.committer!.date!.toLocal().toString(),
              style: Theme.of(context).textTheme.headline5,
              softWrap: false,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    ));
  }
}
