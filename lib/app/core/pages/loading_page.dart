import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {

  const LoadingPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           body: Center(
            child: SizedBox(
              height: 400,
              width: 400,
              child: Image.asset("assets/gif/skill-check.gif"),
            ),
           ),
       );
  }
}