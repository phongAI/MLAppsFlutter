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
        drawer: CustomDrawer(),
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
            Positioned(
              top: 30,
                child: CustomAppBar()
            ),
          ],
        ),
        BottomLayout(
            backgroundColor: Colors.green
        ),
        
        



      ],
    );
  }
}


