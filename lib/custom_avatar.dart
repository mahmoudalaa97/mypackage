import 'package:flutter/material.dart';
///Reference:
//https://stackoverflow.com/questions/46809189/flutter-circleavatar-with-fallback-text
class CustomCircleAvatar extends StatefulWidget {
  final NetworkImage myImage;

  final Text text;
  final double radius;
  final Color backgroundColor ;
  final bool avatarShow;

  const CustomCircleAvatar({Key key, this.myImage, this.text,this.radius,this.backgroundColor,this.avatarShow}) : super(key: key);

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
    if(widget.avatarShow==true){
      return _checkLoading == true
          ? new CircleAvatar(
        child: new Image.asset("assets/avatar.png"),
        radius: widget.radius,
        backgroundColor: widget.backgroundColor,
      )
          : new CircleAvatar(
        backgroundImage: widget.myImage,
        radius: widget.radius,
      );
    }else {
      return _checkLoading == true
          ? new CircleAvatar(
        child: widget.text,
        radius: widget.radius,
        backgroundColor: widget.backgroundColor,
      )
          : new CircleAvatar(
        backgroundImage: widget.myImage,
        radius: widget.radius,
      );
    }
  }
}
