import 'package:flutter/material.dart';

class CallsData {
  String name;
  String subName;
  IconData arrow;
  Color arrowColor;
  double angle;
  IconData callType;
  CallsData(
      {this.name,
      this.subName,
      this.arrow,
      this.arrowColor,
      this.angle,
      this.callType});

}
 List<CallsData> sendCallData() {
    List<CallsData> CallsList = [
      CallsData(
        name: "Sai Chaitanya",
        subName: "20 minutes ago",
        arrow: Icons.arrow_back,
        arrowColor: Colors.green,
        angle: 150,
        callType: Icons.call,
      ),
      CallsData(
        name: "Snehakiran",
        subName: "40 minutes ago",
        arrow: Icons.arrow_back,
        arrowColor: Colors.red,
        angle: 15,
        callType: Icons.video_call,
      ),
      CallsData(
        name: "Bhaskar",
        subName: "50 minutes ago",
        arrow: Icons.arrow_back,
        arrowColor: Colors.green,
        angle: 15,
        callType: Icons.video_call,
      ),
      CallsData(
        name: "Yaswanth",
        subName: "Today 8.03 PM",
        arrow: Icons.arrow_back,
        arrowColor: Colors.red,
        angle: 150,
        callType: Icons.call,
      ),
      CallsData(
        name: "Sidartha",
        subName: "Today 7.54 PM",
        arrow: Icons.arrow_back,
        arrowColor: Colors.green,
        angle: 150,
        callType: Icons.call,
      ),
    ];
    return CallsList;
  }
