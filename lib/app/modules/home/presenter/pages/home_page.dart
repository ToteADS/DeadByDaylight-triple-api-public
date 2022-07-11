import 'package:deadbydaylighttapp/app/modules/home/presenter/widgets/button_option_home_custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
              image: AssetImage(
                "assets/images/dead-by-daylight.png",
              ),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              ButtonOptionHomeCustomWidget(
                imageAssets: "assets/images/killers.png",
                title: "Killers",
                onTap: () => Modular.to.pushNamed("/killers"),
              ),
              ButtonOptionHomeCustomWidget(
                imageAssets: "assets/images/survivors.png",
                title: "Survivers",
                onTap: () => Modular.to.pushNamed("/survivors"),
              ),
              ButtonOptionHomeCustomWidget(
                imageAssets: "assets/images/perks.png",
                title: "Perks",
                onTap: () => Modular.to.pushNamed("/perks"),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
