import 'dart:convert';

import 'package:http/http.dart' as http ;
export 'dart:async';
export 'dart:convert';

typedef Handler = void Function(dynamic,http.Response, dynamic);

class API{

static var header = {

} ;

static getReuest(url ,parameter ,  Handler callBack)async{

print(url);
try{


http.Response  response =  await http.get(url);
var jsonData = json.decode(response.body);
callBack(jsonData,response,null);

}catch (e){

callBack(null,null,e);

}



}
static postRequest(url,parameter,Handler callBack)async{

print(url);
try{


http.Response  response =  await http.post(url,body: parameter);
var jsonData = json.decode(response.body);
callBack(jsonData,response,null);

}catch (e){

callBack(null,null,e);

}
  
}
}