import 'package:flutter_modular/flutter_modular.dart';
import 'package:deadbydaylighttapp/app/modules/perks/perks_store.dart';
import 'package:flutter/material.dart';

class PerksPage extends StatefulWidget {
  final String title;
  const PerksPage({Key? key, this.title = 'PerksPage'}) : super(key: key);
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
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}