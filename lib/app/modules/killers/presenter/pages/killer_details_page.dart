import 'package:deadbydaylighttapp/app/core/common/common_variables.dart';
import 'package:deadbydaylighttapp/app/entities/killer.dart';
import 'package:deadbydaylighttapp/app/core/common/informations_characters_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/common/get_perks_custom_widgets.dart';

class KillerDetailsPage extends StatefulWidget {
  const KillerDetailsPage({
    Key? key,
  }) : super(key: key);
  @override
  KillerDetailsPageState createState() => KillerDetailsPageState();
}

class KillerDetailsPageState extends State<KillerDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final Killer killer = Modular.args.data as Killer;

    final List<String> perks = killer.perks ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text(killer.name ?? ""),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: FadeInImage.assetNetwork(
              image: killer.icon?.shopBackground ?? CommonVariables.imageDeadByDaylightPattern,
              placeholder: 'assets/images/grey-background.png',
              fit: BoxFit.cover,
              fadeInDuration: const Duration(seconds: 1),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InformationsCharactersCustomWidget(title: "Name:", description: killer.name),
                InformationsCharactersCustomWidget(title: "Full Name:", description: killer.fullName),
                InformationsCharactersCustomWidget(title: "Nationality:", description: killer.nationality),
                InformationsCharactersCustomWidget(title: "Realm:", description: killer.realm),
                InformationsCharactersCustomWidget(title: "Power:", description: killer.power),
                InformationsCharactersCustomWidget(title: "Weapon:", description: killer.weapon),
                InformationsCharactersCustomWidget(title: "Speed:", description: killer.speed),
                InformationsCharactersCustomWidget(title: "Terror Radius:", description: killer.terrorRadius),
                InformationsCharactersCustomWidget(title: "Height:", description: killer.height),
                InformationsCharactersCustomWidget(title: "Difficulty:", description: killer.difficulty),
                InformationsCharactersCustomWidget(title: "lore:", description: killer.lore),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("perks:",
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
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 10),
                        child: GetPerksCustomWidgets(perks: perks),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
