import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'mainScreenDrawer.dart';
import 'mainScreenComponent.dart';

//Main Screen
class application extends StatelessWidget {
  const application({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawerEdgeDragWidth: 60,
        drawer: CustomDrawer(),
        appBar: CustomAppBar(),
        body: mainScreen(),
      ),
    );
  }
}

class mainScreen extends StatefulWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          children: [
            Image.asset('assets/images/main_bg.png'),
          ],
        ),
        BottomLayout(
            backgroundColor: Colors.green
        ),


      ],
    );
  }
}


