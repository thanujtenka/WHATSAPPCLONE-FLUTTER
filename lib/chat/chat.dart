import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'chat_data.dart';

class Chat extends StatelessWidget {
  //const Chat({ Key? key }) : super(key: key);
  String formattedDate = DateFormat.yMd().format(DateTime.now());
  ChatData ChatObj;
  Chat({this.ChatObj});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 0,
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
        title: Text(ChatObj.Name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        subtitle: Text(
          ChatObj.subName,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(formattedDate),
            SizedBox(height: 4),
            CircleAvatar(
              child: Text(ChatObj.msgs,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  )),
              backgroundColor: Colors.green,
              radius: 12,
            ),
          ],
        ),
      ),
    );
  }
}
