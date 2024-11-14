import 'package:flutter/material.dart';
import 'status_data.dart';
import 'status.dart';

class StatusBuild extends StatelessWidget {
  //const StatusBuild({ Key? key }) : super(key: key);
  List<StatusData> statusList;
  StatusBuild({this.statusList});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: statusList.length,
        itemBuilder: (BuildContext, Sindex) {
          return Status(
            StaObj: statusList[Sindex],
          );
        });
  }
}
