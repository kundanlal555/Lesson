import 'package:lesson/Model/AllModel.dart';

class UserData{


String title;
String id;

UserData({this.title,this.id});
UserData.convertFromJson(Map<String,dynamic> json){ //named
title = json['title'];
id = json['id'].toString();
}

factory UserData.factoryfromJSON(Map<String,dynamic> json){

return UserData(id: json['id'].toString(),title :json['title'].toString());

}
 

}