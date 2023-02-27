import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//App Bar
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    this.top = 60,
  }) : super(key: key);
  final double top;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Stack(
        children: [
          //Drawer
          GestureDetector(
            child: Icon(Icons.menu,size: 40,),
            onTap: (){
              Scaffold.of(context).openDrawer();
            },
          ),
          //Personal Infor
          GestureDetector(
            child: Icon(Icons.account_circle,size: 50,color: Colors.blue,),
          )
        ],
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
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(borderRadius),
              topRight: Radius.circular(borderRadius),
          )
        ),


      ),
    );
  }
}
