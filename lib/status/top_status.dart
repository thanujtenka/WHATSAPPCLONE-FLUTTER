import 'package:flutter/material.dart';

class TopStatus extends StatelessWidget {
  // const TopStatus({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(
          Icons.person,
          color: Colors.white,
          size: 45,
        ),
        backgroundColor: Color(0xAA999999),
        radius: 30,
      ),
      title: Text("My status",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
      subtitle: Text(
        "Tap to add status update",
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }
}
