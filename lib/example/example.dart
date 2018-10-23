import 'package:flutter/material.dart';
import 'package:mypackage/mypackage.dart';

void main() {
  runApp(Example());
}

class Example extends StatefulWidget {
  ExampleState createState() => ExampleState();
}

class ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        title: "Example",
        home: new Scaffold(
          appBar: AppBar(title: Text("Example"), centerTitle: true),
          body: new ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return new Center(
                    child: new CustomCircleAvatar(
                      myImage: NetworkImage(
                          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                      text: new Text("Person"),radius: 30.5,));
              }),
        ));
  }
}
