import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
