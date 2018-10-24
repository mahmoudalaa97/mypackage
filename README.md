# mypackage(TEST)
A new Flutter package for both android and iOS which helps developers in creating Title in CircleAvatar when you are not have network of their app.
##Library: 
1. CustomCircleAvatar
   - This class use to show **Text()** if this network down when the network come back load image and put it in **NetworkImage()**
     

### Show some :heart: and star the repo to support the project
## Getting Started

To use this package :

* add the dependency to your [pubspec.yaml](https://github.com/mahmoudalaa97/mypackage/blob/master/pubspec.yaml) file.

```yaml
  dependencies:
    flutter:
      sdk: flutter
    mypackage: ^0.1.0
```
## Screenshots
<a href="https://imgflip.com/gif/2kt0vg"><img src="https://i.imgflip.com/2kt0vg.gif" title="made at imgflip.com"/></a>
## Installation
```yaml
mypackage: ^0.1.0
```

## Usage
* Show [Example](https://github.com//mahmoudalaa97/mypackage/blob/master/lib/example.dart)
### How to use
```dart
  import  'package:flutter/material.dart';
  import  'package:mypackage/mypackage.dart';

void main() {
  runApp(Example());
}

class Example extends StatefulWidget {
  ExampleState createState() => ExampleState();
}

class ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    
    return new MaterialApp(
        title: "Example",
        home: new Scaffold(
          appBar: AppBar(title: Text("Example"), centerTitle: true),
          body: new ListView.builder(
              itemBuilder: (BuildContext context, int index) {
            return new Center( child: new CustomCircleAvatar(
                    myImage: NetworkImage(
                        "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                    text: new Text("Person")));
          }),
        ));
  }
}

```
For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).

