import 'package:deadbydaylighttapp/app/entities/perk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/common/common_variables.dart';

class PerksCardWidget extends StatelessWidget {
  final Perk perk;

  const PerksCardWidget({Key? key, required this.perk}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
            image: AssetImage(
              "assets/gif/blood-web.gif",
            ),
            fit: BoxFit.cover),
      ),
      child: GestureDetector(
        onTap: () => Modular.to.pushNamed("/perks/perk", arguments: perk),
        child: Card(
          color: Colors.transparent,
          clipBehavior: Clip.antiAlias,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 150,
                width: 150,
                child: FadeInImage.assetNetwork(
                  image: perk.icon ?? CommonVariables.imageDeadByDaylightPattern,
                  placeholder: 'assets/images/grey-background.png',
                  fit: BoxFit.cover,
                  fadeInDuration: const Duration(seconds: 1),
                ),
              ),
              Column(
                children: [
                  Text(
                    perk.perkName ?? "",
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    perk.role ?? "",
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    perk.name ?? "",
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
