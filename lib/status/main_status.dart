import 'package:flutter/material.dart';
import 'package:whatsapp/status/status_updates.dart';
import 'package:whatsapp/status/top_status.dart';
import 'status_data.dart';
import 'status_build.dart';

class MainStatus extends StatelessWidget {
  //const MainStatus({ Key? key }) : super(key: key);
  @override
   List<StatusData> StatusOnList = sendStatusOnData();
  List<StatusData> StatusOffList = sendStatusOffData();
  Widget build(BuildContext context) {
    return Expanded(
      flex: 12,
      child: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopStatus(),
            SizedBox(height: 10),
            StatusUpdates(
              updatename: "Recent Updates",
            ),
            StatusBuild(
              statusList: StatusOnList,
            ),
            SizedBox(
              height: 10,
            ),
            StatusUpdates(
              updatename: "Viewed Updates",
            ),
            StatusBuild(
              statusList: StatusOffList,
            ),
          ],
        ),
      ),
    );
  }
}
