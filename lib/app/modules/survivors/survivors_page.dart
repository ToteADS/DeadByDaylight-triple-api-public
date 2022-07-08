import 'package:flutter_modular/flutter_modular.dart';
import 'package:deadbydaylighttapp/app/modules/survivors/survivors_store.dart';
import 'package:flutter/material.dart';

class SurvivorsPage extends StatefulWidget {
  final String title;
  const SurvivorsPage({Key? key, this.title = 'SurvivorsPage'}) : super(key: key);
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
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}