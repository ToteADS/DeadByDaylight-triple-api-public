import 'package:deadbydaylighttapp/app/core/pages/errors_page.dart';
import 'package:deadbydaylighttapp/app/core/pages/loading_page.dart';
import 'package:deadbydaylighttapp/app/modules/killers/presenter/widgets/killer_card_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';

import '../../../../entities/killer.dart';
import '../stores/killers_store.dart';

class KillersPage extends StatefulWidget {
  final String title;
  const KillersPage({Key? key, this.title = 'Killers Page'}) : super(key: key);
  @override
  KillersPageState createState() => KillersPageState();
}

class KillersPageState extends State<KillersPage> {
  @override
  Widget build(BuildContext context) {
    final store = context.watch<KillersStore>();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: ScopedBuilder(
        store: store,
        onState: (context, List<Killer> state) => ListView.builder(
          itemCount: state.length,
          itemBuilder: (context, i) {
            if (state.isNotEmpty) {
              return KillerCardWidget(killer: state[i]);
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
