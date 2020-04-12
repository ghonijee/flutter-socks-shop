import 'package:flutter/material.dart';

class DotColors extends StatelessWidget {
  final bool selected;
  final Color dot;

  const DotColors({Key key, this.selected = false, this.dot}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30 ,
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: (selected)?  Border.all(color: Colors.red, width: 3) :  null,
          color: Colors.transparent
      ),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: dot
        ),
      ),
    );
  }
}
