import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:socks_shop/components/FadeAnimation.dart';
import 'package:socks_shop/components/dotColor.dart';
import 'package:socks_shop/components/moreOptions.dart';

class DetailProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;
    double maxHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: maxWidth,
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Color.fromRGBO(251, 121, 155, 1),
              Color.fromRGBO(251, 53, 105, 1)
            ])),
            child: Transform.translate(
              offset: Offset(30, -40),
              child:
              FadeAnimation(1,
              Image.asset(
                "assets/images/details-page-header.png",
              )),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            iconSize: 40,
            padding: EdgeInsets.only(top: 40, left: 20),
          ),
          FadeAnimation(1.2, Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: maxHeight * (5.2 / 8),
              width: maxWidth,
              padding: EdgeInsets.only(top: 25, left: 30, right: 30, bottom: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Rangger Sport",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[700]),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Ankle Men's Athlectic Socks",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        "Ranger sport sock are a fusion of materials of the studiest uality and versatile design that suits all purposes. Each pari of tanger socks is knitted from 100% cotton combed yarn running along a reinanforced 2=play core polyester based elastic throught aout the socks.",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle( fontSize: 15, height: 1.5)
                        )),
                    SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        DotColors(selected: true, dot: Colors.black,),
                        DotColors( dot: Colors.blue,),
                        DotColors(dot: Colors.pink,),
                        DotColors(dot: Colors.yellow,),
                      ],),
                    SizedBox(height: 20,),
                    Text("More Options",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey[800]),),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      height: 85,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          MoreOptions(bgIcon: Colors.pink, urlIcon: "assets/images/socks-icon.png", title: "Arial Lenght Socks",subtitle: "23.444",),
                          MoreOptions(bgIcon: Colors.blueAccent, urlIcon: "assets/images/socks-icon-left.png", title: "Air Spesial Socks",subtitle: "21,900",),
                          MoreOptions(bgIcon: Colors.yellow, urlIcon: "assets/images/socks-icon.png", title: "Banana Color Socks",subtitle: "900",),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
