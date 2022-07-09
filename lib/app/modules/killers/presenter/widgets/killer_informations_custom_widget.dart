import 'package:flutter/material.dart';

class KillerInformationsCustomWidget extends StatelessWidget {
  final String title;
  final String? description;

  const KillerInformationsCustomWidget({Key? key, required this.title, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 2.0),
                    blurRadius: 3.0,
                    color: Colors.grey,
                  ),
                  Shadow(
                    offset: Offset(2.0, 1.0),
                    blurRadius: 5.0,
                    color: Colors.grey,
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 10),
            child: Text(description ?? ""),
          )
        ],
      ),
    );
  }
}
