import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mlapps/Template/customTemplate.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppBar({Key? key}) : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(

      elevation: 0,
      backgroundColor: Colors.white,
      actions: [
        Icon(Icons.account_circle,color: Colors.cyan,size: 40,)
      ],
      leadingWidth: 70,
      leading: GestureDetector(
        child: Icon(
          Icons.menu,size: 40,
          color: Colors.black,
        ),
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
      ),
    );
  }
}


class BottomLayout extends StatelessWidget {
  const BottomLayout({
    Key? key,
    required this.backgroundColor,
  }
  ) : super(key: key);

  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    double borderRadius = 25;
    return Expanded(
      child: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FeatureLayout(title: "ML Apps:"),
              HorizontalFeatureLayout(title: "NLP Apps",)


            ],
          ),
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(borderRadius),
              topRight: Radius.circular(borderRadius),
          ),
        ),


      ),
    );
  }
}
