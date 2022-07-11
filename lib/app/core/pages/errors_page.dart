import 'package:flutter/material.dart';

class ErrorsPage extends StatelessWidget {

  const ErrorsPage({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
                image: AssetImage(
                  "assets/images/dead-by-daylight.png",
                ),
                fit: BoxFit.cover),
          ),
          child: SizedBox(
            height: 400,
            width: 400,
            child: Image.asset("assets/images/connection-error.png"),
          ),
        ),
      ),
    );
  }
}