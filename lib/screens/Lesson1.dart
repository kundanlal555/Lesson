import 'package:flutter/scheduler.dart';

import '../Model/AllModel.dart';
import '../Export/Library.dart';
import '../Export/AllScreen.dart';

class Lesson1 extends StatefulWidget {
  @override
  _Lesson1State createState() => _Lesson1State();
}

class _Lesson1State extends State<Lesson1> {
  List<UserData> data = [];
  @override
  void initState() {


    //TODO: implement initState
    

    super.initState();


    //Way 1


    SchedulerBinding.instance.addPostFrameCallback((_) {
      postApi();
    });


    //Way 2


    // WidgetsBinding.instance
    // .addPostFrameCallback((_) => getList());


    //way 3


    // Future.delayed(const Duration(milliseconds: 500), () {
    //  getList();

    // });


  }
postApi(){
showLLoader(context);
   var parameter = {'title': 'foo','body':'bar','userId':'1'};
  API.postRequest("https://jsonplaceholder.typicode.com/posts", parameter, (jsonData, response,error ) { 
   hideLLoader(context);
print(jsonData);
print(response);
print(error);
  });
}
















  getList() {

    var parameter = {'id': 'Name'};

    showLLoader(context);

    API.getReuest(URL.GetList, parameter, (jsonData, response, error) {

      // print(jsonData);
      hideLLoader(context);

      if (jsonData != null) {

        var jArray = jsonData as List;

        print("fafafaf");

        print(jArray);

        setState(() {

          data = jArray.map((e) => UserData.factoryfromJSON(e)).toList();

        });

      } else {

        print(error);

      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Test"),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[Text(data[index].id), Text(data[index].title)],
            );
          },
        ));
  }
}
