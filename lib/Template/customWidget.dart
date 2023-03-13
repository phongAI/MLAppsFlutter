import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mlapps/constant.dart';


//Text with Icon
class TextIcon extends StatelessWidget {

  const TextIcon(
      {
        Key? key,
        this.space = 5,
        required this.leadingIcon,
        this.iconColor = Colors.white,
        required this.text,
        this.fontSize = 15,
        this.textColor = Colors.white,
        this.header = false
      }
      ) : super(key: key);
  final double space;
  final IconData leadingIcon;
  final Color iconColor;
  final text;
  final double fontSize;
  final textColor;
  final bool header;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(leadingIcon,color: iconColor,),
        SizedBox(width: space,),
        Text(text,
          style: GoogleFonts.lato(
              textStyle: TextStyle(color: textColor,
                fontSize: fontSize,
              )
          ),
        ),
      ],
    );
  }
}


//List Tile
class TemplateListTile extends StatelessWidget {
  const TemplateListTile({
    Key? key,
    this.title = "Image Classification",
    this.leftPadding = 15,
    this.minLeadingWidth = 0,
    this.trailing = Icons.more_vert,
    this.heading = true
  }) : super(key: key);
  final String title;
  final double leftPadding;
  final double minLeadingWidth;
  final IconData trailing;
  final heading;
  @override
  Widget build(BuildContext context) {
    //Header
    double fontSize = (heading) ? 18 : 16;

    //Mapping
    final Map<String, String> mapSubtitle = {
      'Image Classification': 'Specify kind of object via image',
      'Object Detection': 'Detect and localize multiple objects',
      'Pose Estimation': 'Identify the joints in human body',
    };
    final Map<String, IconData> mapIcon = {
      'Image Classification': Icons.person,
      'Object Detection': Icons.person_add,
      'Pose Estimation': Icons.directions_walk,
    };

    String subtitle = "";
    if(mapSubtitle.keys.contains(title)){
      subtitle = mapSubtitle[title]!;
    }
    IconData leading = Icons.image_search;
    if(mapIcon.keys.contains(title)){
      leading = mapIcon[title]!;
    }

    return ListTile(
      visualDensity: VisualDensity(vertical:-2,horizontal: -4),
      title: Text(title,style: TextStyle(fontSize: fontSize),),
      subtitle: Text(subtitle),
      contentPadding: EdgeInsets.only(left: leftPadding),
      minLeadingWidth: minLeadingWidth,
      leading: Icon(leading),
      trailing: Icon(trailing),
      onTap: (){

      },
    );
  }
}

class HorizontalFeatureBox extends StatelessWidget {
  const HorizontalFeatureBox({
    Key? key,
    this.size = 130,
    this.title = "Question Answering",
    this.colorBackground = Colors.white,
  }) : super(key: key);
  final double size;
  final String title;
  final Color colorBackground;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: colorBackground
      ),
      child: Column(
        children: [
          SizedBox(height: size*0.05,),
          Expanded(
            child: Container(
              child: Image.asset(nlpList[title]!,
                fit: BoxFit.fitHeight,
              ),

            ),
          ),
          Text(title,textAlign: TextAlign.center,
          style: textStyle1,),
          SizedBox(height: size*0.1,),
        ],
      ),
    );
  }
}
