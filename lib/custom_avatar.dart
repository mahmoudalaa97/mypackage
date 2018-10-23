import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatefulWidget {
  NetworkImage myImage;

  String initials;


  CustomCircleAvatar({this.myImage, this.initials});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _CustomCircleAvatarState();
  }

}

class _CustomCircleAvatarState extends State<CustomCircleAvatar>{

  bool _checkLoading = true;

  @override
  void initState() {
    widget.myImage.resolve(new ImageConfiguration()).addListener((_, __) {
      if (mounted) {
        setState(() {
          _checkLoading = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return _checkLoading == true ? new CircleAvatar(
      child: new Text(widget.initials),radius: 25.4,) : new CircleAvatar(
      backgroundImage: widget.myImage,radius: 25.4,);
  }
}