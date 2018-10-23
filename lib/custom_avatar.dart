import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatefulWidget {
  final NetworkImage myImage;

  final Text text;
  final double radius;

  const CustomCircleAvatar({Key key, this.myImage, this.text,this.radius})
      : super(key: key);

  @override
  _CustomCircleAvatarState createState() => _CustomCircleAvatarState();
}

class _CustomCircleAvatarState extends State<CustomCircleAvatar> {
  bool _checkLoading = true;

  @override
  void initState() {
    super.initState();
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
    return _checkLoading == true
        ? new CircleAvatar(
            child: widget.text,
            radius: widget.radius,
          )
        : new CircleAvatar(
            backgroundImage: widget.myImage,
            radius: widget.radius,
          );
  }
}
