import 'package:andikaputra_uts/secondpage.dart';
import 'package:flutter/material.dart';

class fisrtpage extends StatefulWidget {
  const fisrtpage({super.key});

  @override
  State<fisrtpage> createState() => _fisrtpageState();
}

class _fisrtpageState extends State<fisrtpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(onTap:(){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> secondpage()));
      }, child: Center(child: Image.asset("image/Logo.png", width:170,))),
    );
  }
}
