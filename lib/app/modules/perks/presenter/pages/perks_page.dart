import 'package:deadbydaylighttapp/app/entities/perk.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';

import '../../../../core/pages/errors_page.dart';
import '../../../../core/pages/loading_page.dart';
import '../stores/perks_store.dart';
import '../widgets/perks_card_widget.dart';

class PerksPage extends StatefulWidget {
  final String title;
  const PerksPage({Key? key, this.title = 'Perks'}) : super(key: key);
  @override
  PerksPageState createState() => PerksPageState();
}
class PerksPageState extends State<PerksPage> {
  final PerksStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: ScopedBuilder(
        store: store,
        onState: (context, List<Perk> state) => ListView.builder(
          itemCount: state.length,
          itemBuilder: (context, i) {
            if (state.isNotEmpty) {
              return PerksCardWidget(perk: state[i]);
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