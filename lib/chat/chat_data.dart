
class ChatData
{
  String Name;
  String subName;
  String msgs;
  ChatData({this.Name,this.subName,this.msgs});  
}

List<ChatData> sendData()
{
   List<ChatData> ChatList = [
    ChatData(
      Name: "Sai Chaitanya",
      subName: "This is message from ",
      msgs: "10",
    ),
    ChatData(
      Name: "Sneha Kiran",
      subName: "Good Evening ",
      msgs: "12",
    ),
    ChatData(
      Name: "Siddu",
      subName: "Tinadaniki ra",
      msgs: "13",
    ),
    ChatData(
      Name: "Yaswanth",
      subName: "Home work chesava",
      msgs: "14",
    ),
    ChatData(
      Name: "Bhaksar",
      subName: "Thop bro nuvu ",
      msgs: "1",
    )
  ];
  return ChatList;
}