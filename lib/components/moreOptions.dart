import 'package:flutter/material.dart';

class MoreOptions extends StatelessWidget {
  final Color bgIcon;
  final String urlIcon;
  final String title;
  final String subtitle;

  const MoreOptions({Key key, this.bgIcon, this.urlIcon, this.title, this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.1 / 1,
      child: Center(
        child: Container(
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey[500]),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
          ),
          child: ListTile(
            leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: bgIcon,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Image.asset(urlIcon)),
            title: Text(title),
            subtitle: Text(subtitle),
          ),
        ),
      ),
    );
  }
}
