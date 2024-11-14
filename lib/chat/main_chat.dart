import 'package:flutter/material.dart';
import 'chat_data.dart';
import 'chat.dart';
class MainChat extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     List<ChatData> ChatList = sendData();
    return Expanded(
                child: SingleChildScrollView(
                  physics: ScrollPhysics(),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: ChatList.length,
                      itemBuilder: (BuildContext, index) {
                        return Chat(
                          ChatObj: ChatList[index],
                        );
                      }),
                ),
                flex: 12,
              );
  }
}