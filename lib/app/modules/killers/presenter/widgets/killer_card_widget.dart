import 'package:deadbydaylighttapp/app/entities/killer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class KillerCardWidget extends StatelessWidget {
  final Killer killer;
  const KillerCardWidget({Key? key, required this.killer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imageDeadByDaylightPattern = "https://deadbydaylight.com/static/aa669d23281d14adcb3ab2e514939bc1/49886/dbd_keyart_4c78f56a30.jpg";

    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Image.network(
                killer.icon?.portrait ?? imageDeadByDaylightPattern,
              ),
            ),
            title: Text(killer.name ?? ""),
            subtitle: Text(
              killer.isFree ?? false ? "Free of charge" : "Paid out",
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          SizedBox(
            height: 400,
            child: Image.network(
              killer.icon?.previewPortrait ?? imageDeadByDaylightPattern,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              killer.overview ?? "",
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              TextButton(
                style: TextButton.styleFrom(textStyle: const TextStyle(color: Color(0xFF6200EE))),
                onPressed: () {
                  Modular.to.pushNamed("/killers/killer/", arguments: killer);
                },
                child: const Text('Details'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
