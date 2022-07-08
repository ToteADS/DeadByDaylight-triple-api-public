import 'package:flutter_modular/flutter_modular.dart';
import 'package:deadbydaylighttapp/app/modules/killers/killers_store.dart';
import 'package:flutter/material.dart';

class KillersPage extends StatefulWidget {
  final String title;
  const KillersPage({Key? key, this.title = 'KillersPage'}) : super(key: key);
  @override
  KillersPageState createState() => KillersPageState();
}
class KillersPageState extends State<KillersPage> {
  final KillersStore store = Modular.get();

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