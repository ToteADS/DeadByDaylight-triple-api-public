import '../../../../core/common/common_variables.dart';
import 'package:flutter/material.dart';
import '../../../../entities/survivor.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SurvivorCardWidget extends StatelessWidget {
  final Survivor survivor;

  const SurvivorCardWidget({
    Key? key,
    required this.survivor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: FadeInImage.assetNetwork(
                image: survivor.icon?.portrait ?? CommonVariables.imageDeadByDaylightPattern,
                placeholder: 'assets/images/grey-background.png',
                fit: BoxFit.cover,
                fadeInDuration: const Duration(seconds: 1),
              ),
            ),
            title: Text(survivor.name ?? ""),
            subtitle: Text(
              survivor.isFree ?? false ? "Free of charge" : "Paid out",
              style: TextStyle(color: Colors.white.withOpacity(0.6)),
            ),
          ),
          SizedBox(
            height: 400,
            child: FadeInImage.assetNetwork(
              image: survivor.icon?.previewPortrait ?? CommonVariables.imageDeadByDaylightPattern,
              placeholder: 'assets/images/grey-background.png',
              fit: BoxFit.cover,
              fadeInDuration: const Duration(seconds: 1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              survivor.overview ?? "",
              style: TextStyle(color: Colors.white.withOpacity(0.6)),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              TextButton(
                style: TextButton.styleFrom(textStyle: const TextStyle(color: Color(0xFF6200EE))),
                onPressed: () {
                  Modular.to.pushNamed("/survivors/survivor", arguments: survivor);
                },
                child: const Text(
                  'Details',
                  style: TextStyle(
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
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
