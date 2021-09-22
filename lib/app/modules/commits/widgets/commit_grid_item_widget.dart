import 'package:flutter/material.dart';
import 'package:test_ftm/app/common/ui.dart';
import 'package:test_ftm/app/models/commit_model.dart';

class CommitsGridItemWidget extends StatelessWidget {
  final Commit? commit;

  CommitsGridItemWidget({this.commit});
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
      decoration: Ui.getBoxDecotarion(),
      child: Wrap(
        children: [
          Container(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
            child: Text(
              commit!.author.toString(),
              style: Theme.of(context).textTheme.bodyText2,
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
