import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socks_shop/components/FadeAnimation.dart';
import 'package:socks_shop/components/productCard.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double heightMax = MediaQuery.of(context).size.height;
    final double widthMax = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FadeAnimation(1, Container(
                width: widthMax,
                height: heightMax * (3 / 7),
                padding: EdgeInsets.only(top: 50, left: 25, right: 25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50.0),
                        bottomRight: Radius.circular(50.0)),
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(255, 247, 185, 1),
                      Color.fromRGBO(255, 239, 107, 1)
                    ], begin: Alignment.topRight)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      "assets/images/menu.png",
                      width: 25,
                    ),
                    SizedBox(height: 25),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          flex: 4,
                          child: Text("Best Online \nSocks Collection", style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(97, 90, 90, 1)
                          ),),
                        ),
                        Expanded(
                            flex: 3,
                            child: Image.asset("assets/images/header-socks.png")),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            FadeAnimation(1.2,Transform.translate(
              offset: Offset(0, -30),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                height: 60,
                margin: EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                    color: Colors.grey[350],
                    blurRadius: 20.0,
                    offset: Offset(0.0, 10.0),
                  )]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",
                    suffixIcon: Icon(Icons.search, size: 20, color: Colors.black54,),
                  ),
                ),
              ),
            )),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Choose \na category", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color.fromRGBO(97, 90, 98, 1)),),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FlatButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          padding: EdgeInsets.all(10),
                          onPressed: (){},
                          color: Color.fromRGBO(251, 53, 105, 0.1),
                          child: Text("Adult", style: TextStyle(
                            color: Color.fromRGBO(251, 53, 105, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),),
                        ),
                        SizedBox(width: 10,),
                        FlatButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          padding: EdgeInsets.all(10),
                          onPressed: (){},
                          color: Color.fromRGBO(251, 53, 105, 0.1),
                          child: Text("Adult", style: TextStyle(
                              color: Color.fromRGBO(251, 53, 105, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                          ),),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            FadeAnimation(1.5, Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: (2.2 / 7) * heightMax,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ProductCard(
                    startColor: Color.fromRGBO(251, 121, 155, 1),
                    endColor: Color.fromRGBO(251, 53, 185, 1),
                    urlImage: "assets/images/socks-one.png",
                  ),
                  ProductCard(
                    startColor: Color.fromRGBO(203, 251, 255, 1),
                    endColor: Color.fromRGBO(81, 223, 234, 1),
                    urlImage: "assets/images/socks-two.png",
                  ),
                  ProductCard(
                    startColor: Color.fromRGBO(251, 121, 155, 1),
                    endColor: Color.fromRGBO(251, 53, 185, 1),
                    urlImage: "assets/images/socks-one.png",
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
