import 'package:deadbydaylighttapp/app/core/common/informations_characters_custom_widget.dart';
import 'package:deadbydaylighttapp/app/entities/survivor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/common/common_variables.dart';
import '../../../../core/common/get_perks_custom_widgets.dart';

class SurvivorDetailsPage extends StatelessWidget {
  const SurvivorDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Survivor survivor = Modular.args.data as Survivor;

    final List<String> perksSurv = survivor.perks ?? [];
    return Scaffold(
      appBar: AppBar(
        title: Text(survivor.name ?? ""),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: FadeInImage.assetNetwork(
              image: survivor.icon?.shopBackground ?? CommonVariables.imageDeadByDaylightPattern,
              placeholder: 'assets/images/grey-background.png',
              fit: BoxFit.cover,
              fadeInDuration: const Duration(seconds: 1),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InformationsCharactersCustomWidget(title: "Name:", description: survivor.name),
                InformationsCharactersCustomWidget(title: "Nationality:", description: survivor.nationality),
                InformationsCharactersCustomWidget(title: "Role:", description: survivor.role),
                InformationsCharactersCustomWidget(title: "Difficulty:", description: survivor.difficulty),
                InformationsCharactersCustomWidget(title: "lore:", description: survivor.lore),
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
                        child: GetPerksCustomWidgets(perks: perksSurv),
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
