

// import 'package:flutter/material.dart';
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => new _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 30;
// TextEditingController nameController = TextEditingController();
//   List buildTextViews(int count) {
//     List<Widget> strings = List();
//     for (int i = 0; i < count; i++) {

//       strings.add(new Padding(padding: new EdgeInsets.all(16.0),
//           child: 
          
//           i==8?Container(
//             height: 50,
//             child: TextField(
//                autocorrect: false,
//                     controller: nameController,
//                     keyboardType: TextInputType.emailAddress,
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                       labelText: 'Full Name',
//                     ),
//                     onChanged: (text) {
//                       setState(() {
                       
//                         //you can access nameController in its scope to get
//                         // the value of text entered as shown below
//                         //fullName = nameController.text;
//                       });
//                     },
//                   ),
//           ):
//           GestureDetector(
//             onTap: () {
//                           FocusScope.of(context).requestFocus(new FocusNode());
//                     },
//                       child: new Text("Item " + i.toString(),
//                 style: new TextStyle(fontSize: 16.0, color: Colors.black)),
//           )
              
//               ));
//     }
//     return strings;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //color: Colors.white,
//       body: GestureDetector(
//           onTap: () {
//                           FocusScope.of(context).requestFocus(new FocusNode());
//                     },
//               child: CustomScrollView(
//           slivers: <Widget>[
//             SliverAppBar(
//                pinned: true,
//                floating: true,
//               title: Text("Silver Bar"),
//               expandedHeight: 200.0,
//               flexibleSpace: Placeholder(),
//               backgroundColor: Colors.red,

//             ),

//            SliverToBoxAdapter(
//              child: Container(color:Colors.green,height:33),
//            ),
//             new SliverList(
//                 delegate: new SliverChildListDelegate(buildTextViews(_counter))),
//                 new SliverList(
//                 delegate: new SliverChildListDelegate(buildTextViews(_counter)))

//           ],
//         ),
//       ),
//     );
//   }
// }