import 'package:flutter/material.dart';

class StatusUpdates extends StatelessWidget {
  //const StatusUpdates({ Key? key }) : super(key: key);
  String updatename;
  StatusUpdates({this.updatename});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        top: 10,
      ),
      child: Text(
       updatename,
        style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 18,
          color: Colors.grey,
        ),
      ),
    );
  }
}
