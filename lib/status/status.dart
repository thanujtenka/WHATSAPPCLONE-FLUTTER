import 'package:flutter/material.dart';
import 'status_data.dart';

class Status extends StatelessWidget {
  //const MyStatus({ Key? key }) : super(key: key);
  StatusData StaObj;
  Status({this.StaObj});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 0,
      child: ListTile(
        leading: CircleAvatar(
          radius: 35,
          backgroundColor: StaObj.overColor,
          child: CircleAvatar(
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 40,
            ),
            backgroundColor: Color(0xFF999999),
            radius: 24,
          ),
        ),
        title: Text(
          StaObj.Name,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          StaObj.subName,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
