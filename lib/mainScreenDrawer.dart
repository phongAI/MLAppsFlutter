import 'package:flutter/material.dart';
import 'mainScreenComponent.dart';
import 'Template/customTemplate.dart';

//Custom Drawer
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double drawerWidth = size.width*0.8;
    return Drawer(
      width: drawerWidth,
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            //Header
            CustomHeaderDrawer(),
            CustomBodyDrawer()
          ],
        ),
      ),
    );
  }
}

class CustomHeaderDrawer extends StatelessWidget {
  const CustomHeaderDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double quoteWidth = size.width*0.45;
    return Stack(
      children: [
        //Back-ground image
        Image.asset('assets/images/image_bg.jpg'),

        //Icon character image
        Positioned(
          bottom: 20,
          left: 15,
          child: ClipOval(
            child: Image.asset(
              'assets/images/animated_character.png',
              scale: 1.2,
            ),
          ),
        ),

        //Crown
        Positioned(
          left: 36,
          bottom: 95,
          child: Image.asset('assets/images/crown.png')
        ),

        //Exit Button
        Positioned(
          right: 20,
          top: 20,
            child: IconButton(
              onPressed: (){
                Scaffold.of(context).closeDrawer();
              },
              icon: Image.asset('assets/images/closeButton.png'),
            )
        ),

        //Quote container
        Positioned(
          bottom: 25,
          right: 25,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: TextIcon(leadingIcon: Icons.insert_link, text: "github.com/phongAI"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: TextIcon(leadingIcon: Icons.location_on, text: "Hanoi, Vietnam"),
                ),
              ],
            ),
            width: quoteWidth,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(5))
            ),
          )
        )
      ],
    );
  }
}

//Custom Body Drawer
class CustomBodyDrawer extends StatelessWidget {
  const CustomBodyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          CustomHeaderTilte(leadingIcon: Icons.camera_alt,title: "ComputerVision:",),
          TemplateListTile(heading: false,),
          Divider(
            thickness: 1,
            height: 0,
          ),
          TemplateListTile(title: "Object Detection",heading: false,),
          Divider(
            thickness: 1,
            height: 0,
          ),
          TemplateListTile(title: "Pose Estimation",heading: false,),
          Divider(
            thickness: 1,
            height: 0,
          ),
        ],

      ),
    );
  }
}







