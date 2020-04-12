import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:socks_shop/pages/detaiProduct.dart';

class ProductCard extends StatelessWidget {

  final Color startColor;
  final Color endColor;
  final String urlImage;

  const ProductCard({Key key, this.startColor, this.endColor, this.urlImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailProduct()));
      },
      child: AspectRatio(
        aspectRatio: 4/5,
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.black54,
            boxShadow: [BoxShadow(
              color: Colors.grey[350],
              blurRadius: 10,
              offset: Offset(0.0, 10.0),
            )],
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                startColor,
                endColor
              ]
            )
          ),
          child: Center(
            child: Image.asset(urlImage, width: 80,),
          ),
        ),
      ),
    );
  }
}
