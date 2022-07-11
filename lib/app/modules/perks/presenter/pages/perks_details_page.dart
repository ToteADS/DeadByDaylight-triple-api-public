import 'package:deadbydaylighttapp/app/core/common/common_variables.dart';
import 'package:deadbydaylighttapp/app/core/common/informations_characters_custom_widget.dart';
import 'package:deadbydaylighttapp/app/entities/perk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PerksDetailsPage extends StatelessWidget {
  const PerksDetailsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Perk perk = Modular.args.data as Perk;

    return Scaffold(
      appBar: AppBar(
        title: Text(perk.perkName ?? ""),
      ),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: FadeInImage.assetNetwork(
              image: CommonVariables.imageDeadByDaylightPattern,
              placeholder: 'assets/images/grey-background.png',
              fit: BoxFit.cover,
              fadeInDuration: const Duration(seconds: 1),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 250,
                      width: 250,
                      child: FadeInImage.assetNetwork(
                        image: perk.icon ?? CommonVariables.imageDeadByDaylightPattern,
                        placeholder: 'assets/images/grey-background.png',
                        fit: BoxFit.cover,
                        fadeInDuration: const Duration(seconds: 1),
                      ),
                    ),
                  ],
                ),
                InformationsCharactersCustomWidget(title: "Name Perk:", description: perk.perkName),
                InformationsCharactersCustomWidget(title: "role:", description: perk.role),
                InformationsCharactersCustomWidget(title: "Character:", description: perk.name),
                InformationsCharactersCustomWidget(title: "Description:", description: perk.description),
                InformationsCharactersCustomWidget(title: "Teach Level:", description: perk.teachLevel.toString()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
