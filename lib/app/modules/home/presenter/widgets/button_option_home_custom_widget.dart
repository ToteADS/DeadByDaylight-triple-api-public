import 'package:flutter/material.dart';

class ButtonOptionHomeCustomWidget extends StatelessWidget {
  final String imageAssets;
  final Function()? onTap;
  final String title;

  const ButtonOptionHomeCustomWidget({Key? key, required this.imageAssets, this.onTap, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage(
                imageAssets,
              ),
              fit: BoxFit.cover),
        ),
        child: GestureDetector(
          onTap: onTap,
          child: Card(
            color: Colors.transparent,
            clipBehavior: Clip.antiAlias,
            child: Center(
                child: Text(
              title,
              style: const TextStyle(
                fontSize: 50,
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
              ),
            )),
          ),
        ),
      ),
    );
  }
}
