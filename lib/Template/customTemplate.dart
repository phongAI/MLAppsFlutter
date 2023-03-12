import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mlapps/Template/customWidget.dart';
import 'package:mlapps/constant.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

//Header
class CustomHeaderTilte extends StatelessWidget {
  const CustomHeaderTilte({
    Key? key,
    required this.leadingIcon,
    required this.title,
    this.heading = true,
  }
  ) : super(key: key);

  final IconData leadingIcon;
  final String title;
  final bool heading;
  final Color backgroundColor = Colors.cyan;
  @override
  Widget build(BuildContext context) {
    double fontSize;
    fontSize = (heading) ? 20 : 18;
    return FittedBox(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 14),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(25))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(leadingIcon,color: Colors.black,),
            SizedBox(width: 10,),
            Text(title,
              style: TextStyle(
                fontSize: fontSize,
                color: Colors.white
              ),)
          ],
        ),
      ),
    );
  }
}

class CustomFeatureBox extends StatelessWidget {
  const CustomFeatureBox({
    Key? key,
    this.height = 140,
    required this.width,
    this.title = 'Image Generative',
    this.foreColor = Colors.white,
    this.colorBackground = Colors.white,
  }) : super(key: key);

  final double height;
  final double width;
  final String title;
  final Color colorBackground;
  final Color foreColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                title,
              style: GoogleFonts.lato(
                fontSize: 16,
                color: foreColor
              ),
            ),
          ),
          Expanded(
            child: Image.asset(
                functionList[title]!,
              fit: BoxFit.fitHeight,
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
      decoration: BoxDecoration(
        color: colorBackground,
        borderRadius: BorderRadius.all(
          Radius.circular(12)
        ),
      ),
    );
  }
}


class FeatureLayout extends StatelessWidget {
  const FeatureLayout({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 25, 20, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: headerStyle1,),
              Container(
                height: 4,
                color: Colors.orange,
                width: 100,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  CustomFeatureBox(width: size.width*0.4,foreColor: Colors.black),
                  SizedBox(height: 20,),
                  CustomFeatureBox(width: size.width*0.4,title: "Motion Tracking",foreColor: Colors.white,colorBackground: Color.fromRGBO(235, 90, 51, 1),),
                ],
              ),
              Column(
                children: [
                  CustomFeatureBox(width: size.width*0.4,title: "Object Detection",colorBackground: Color.fromRGBO(19, 219, 176,1),foreColor: Colors.white),
                  SizedBox(height: 20,),
                  CustomFeatureBox(width: size.width*0.4,foreColor: Colors.white,title: "Face Recognition",colorBackground: Color.fromRGBO(7, 78, 169, 1),),
                ],
              ),
            ],
          ),
        ),
        SingleChildScrollView(
        )

      ],
    );


  }
}

class HorizontalFeatureLayout extends StatelessWidget {
  const HorizontalFeatureLayout({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 25, 20, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: headerStyle1,),
              Container(
                height: 4,
                color: Colors.orange,
                width: 100,
              )
            ],
          ),
        ),
        SingleChildScrollView(

          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              HorizontalFeatureBox(),
              HorizontalFeatureBox(),
              HorizontalFeatureBox(),
              HorizontalFeatureBox(),

            ],
          ),
        )
      ],
    );
  }
}







