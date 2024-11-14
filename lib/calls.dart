import 'calls_data.dart';
import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);
  CallsData calObj;
  Calls({this.calObj});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(
            Icons.person,
            color: Colors.white,
            size: 45,
          ),
          backgroundColor: Color(0xAA999999),
          radius: 30,
        ),
        title: Text(calObj.name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        subtitle: Row(
          children: [
            Transform.rotate(
              angle: calObj.angle, //set the angel
              child: Icon(
                Icons.arrow_back_sharp,
                size: 14,
                color: calObj.arrowColor,
              ),
            ),
            Text(
              calObj.subName,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
        trailing: Icon(
         calObj.callType,
          color: Color(0xFF075E54),
          size: 28,
        ),
      ),
    );
  }
}
