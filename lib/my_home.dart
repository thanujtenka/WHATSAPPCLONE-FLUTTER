//import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:whatsapp/calls.dart';
import 'package:whatsapp/constants.dart';
import 'package:whatsapp/status/main_status.dart';
import 'chat/main_chat.dart';
import 'package:intl/intl.dart';
import './calls_data.dart';

String formattedDate = DateFormat.yMd().format(DateTime.now());

class MyHome extends StatefulWidget {
  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  //const MyHome({ Key? key }) : super(key: key);
  Widget build(BuildContext context) {
    List<CallsData> callsList = sendCallData();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF075E54),
          elevation: 0,
          toolbarHeight: 60,
          title: Text("WhatsApp"),
          actions: [
            Icon(Icons.search, size: 30),
            SizedBox(width: 10),
            Icon(Icons.more_vert, size: 30),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                color: Color(0xFF075E54),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Icon(
                          Icons.camera_alt,
                          size: 30,
                          color: Color(0x99FFFFFF),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FlatButton(
                            onPressed: () {
                              setState(() {
                                chatBool = true;
                                statusBool = false;
                                callsBool = false;
                                chatColor = Colors.white;
                                statusColor = Color(0x99FFFFFF);
                                callsColor = Color(0x99FFFFFF);
                                floBut = Icons.message;
                              });
                            },
                            padding: EdgeInsets.zero,
                            child: Text(
                              'CHATS',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: chatColor),
                            ),
                          ),
                          Visibility(
                              visible: chatBool,
                              child: Divider(
                                color: Colors.white,
                                thickness: 2.5,
                                height: 6,
                              ))
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FlatButton(
                            onPressed: () {
                              setState(() {
                                chatBool = false;
                                statusBool = true;
                                callsBool = false;
                                chatColor = Color(0x99FFFFFF);
                                statusColor = Colors.white;
                                callsColor = Color(0x99FFFFFF);
                                floBut = Icons.camera_alt;
                              });
                            },
                            child: Text(
                              'STATUS',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: statusColor),
                            ),
                          ),
                          Visibility(
                              visible: statusBool,
                              child: Divider(
                                color: Colors.white,
                                thickness: 2.5,
                                height: 6,
                              ))
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          FlatButton(
                            onPressed: () {
                              setState(
                                () {
                                  chatBool = false;
                                  statusBool = false;
                                  callsBool = true;
                                  chatColor = Color(0x99FFFFFF);
                                  statusColor = Color(0x99FFFFFF);
                                  callsColor = Colors.white;
                                  floBut = Icons.call;
                                },
                              );
                            },
                            child: Text(
                              'CALLS',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: callsColor),
                            ),
                          ),
                          Visibility(
                              visible: callsBool,
                              child: Divider(
                                color: Colors.white,
                                thickness: 2.5,
                                height: 6,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            if (chatBool == true) ...[
              MainChat()
            ] else if (statusBool == true) ...[
              MainStatus()
            ] else if (callsBool == true) ...[
              Expanded(
                flex: 12,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: callsList.length,
                    itemBuilder: (BuildContext, index) {
                      return Calls(
                        calObj: callsList[index],
                      );
                    }),
              )
            ]
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(floBut),
            backgroundColor: Color(0xFF075E54),
            onPressed: () {}),
      ),
    );
  }
}
