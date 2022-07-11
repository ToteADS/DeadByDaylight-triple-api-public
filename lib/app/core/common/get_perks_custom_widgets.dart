import 'package:flutter/material.dart';

class GetPerksCustomWidgets extends StatelessWidget {

  final List<String> perks;

  const GetPerksCustomWidgets({ Key? key, required this.perks }) : super(key: key);

   @override
   Widget build(BuildContext context) {
      List<Widget> list = [];
    for (var i = 0; i < perks.length; i++) {
      list.add(Text(perks[i]));
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: list,
    );
  }
}

