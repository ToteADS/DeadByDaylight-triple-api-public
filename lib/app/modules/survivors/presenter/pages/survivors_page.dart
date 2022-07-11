import 'package:deadbydaylighttapp/app/entities/survivor.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';

import '../../../../core/pages/errors_page.dart';
import '../../../../core/pages/loading_page.dart';
import '../stores/survivors_store.dart';
import '../widgets/survivor_card_widget.dart';

class SurvivorsPage extends StatefulWidget {
  final String title;
  const SurvivorsPage({Key? key, this.title = 'Survivors'}) : super(key: key);
  @override
  SurvivorsPageState createState() => SurvivorsPageState();
}
class SurvivorsPageState extends State<SurvivorsPage> {
  final SurvivorsStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: ScopedBuilder(
        store: store,
        onState: (context, List<Survivor> state) => ListView.builder(
          itemCount: state.length,
          itemBuilder: (context, i) {
            if (state.isNotEmpty) {
              return SurvivorCardWidget(survivor: state[i]);
            } else {
              return Container();
            }
          },
        ),
        onError: (context, error) => const ErrorsPage(),
        onLoading: (context) => const LoadingPage(),
      )),
    );
  }
}