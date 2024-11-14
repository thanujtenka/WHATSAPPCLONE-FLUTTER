import 'package:flutter/material.dart';
class StatusData
{
  String Name;
  String subName;
  Color overColor;
  bool flag;
  StatusData({this.Name,this.subName,this.overColor,this.flag});  
}
List<StatusData> StatusList = [

    StatusData(
      Name: "Sai Chaitanya",
      subName: "date and time",
      overColor:Colors.green,
      flag:true,

    ),
    StatusData(
      Name: "Snehakiran",
      subName: "date and time",
      overColor:Colors.grey.shade600,
      flag:false,
    ),
    StatusData(
      Name: "Siddu",
      subName: "date and time",
      overColor:Colors.grey.shade600,
      flag:false,
    ),
    StatusData(
      Name: "Yaswanth",
      subName: "date and time",
      overColor:Colors.green,
      flag:true,
    ),
    StatusData(
      Name: "Bhaskar",
      subName: "date and time",
      overColor:Colors.grey.shade600,
      flag:false,
    ),
    StatusData(
      Name: "Whatsapp",
      subName: "date and time",
      overColor:Colors.grey.shade600,
      flag:false,
    ),
    StatusData(
      Name: "Gestures",
      subName: "date and time",
      overColor:Colors.green,
      flag:true,
    ),
    StatusData(
      Name: "Goals",
      subName: "date and time",
      overColor:Colors.green,
      flag:true,
    ),
  ];
List<StatusData> sendStatusOnData()
{
     List<StatusData> OnData=[];
      for(int i=0;i<StatusList.length;i++)
      {
        if(StatusList[i].flag==true)
        OnData.add(StatusList[i]);
      }
  return OnData;
}
List<StatusData> sendStatusOffData()
{
     List<StatusData> OffData=[];
      for(int i=0;i<StatusList.length;i++)
      {
        if(StatusList[i].flag==false)
        OffData.add(StatusList[i]);
      }
  return OffData;
}