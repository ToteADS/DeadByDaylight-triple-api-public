import 'package:deadbydaylighttapp/app/entities/killer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/common/common_variables.dart';

class KillerCardWidget extends StatelessWidget {
  final Killer killer;
  const KillerCardWidget({Key? key, required this.killer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   

    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Image.network(
                killer.icon?.portrait ?? CommonVariables.imageDeadByDaylightPattern,
              ),
            ),
            title: Text(killer.name ?? ""),
            subtitle: Text(
              killer.isFree ?? false ? "Free of charge" : "Paid out",
              style: TextStyle(color: Colors.white.withOpacity(0.6)),
            ),
          ),
          SizedBox(
            height: 400,
            child: Image.network(
              killer.icon?.previewPortrait ?? CommonVariables.imageDeadByDaylightPattern,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              killer.overview ?? "",
              style: TextStyle(color: Colors.white.withOpacity(0.6)),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              TextButton(
                style: TextButton.styleFrom(textStyle: const TextStyle(color: Color(0xFF6200EE))),
                onPressed: () {
                  Modular.to.pushNamed("/killers/killer", arguments: killer);
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
