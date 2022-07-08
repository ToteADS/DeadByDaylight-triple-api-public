import 'package:deadbydaylighttapp/app/entities/killer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class KillerDetailsPage extends StatefulWidget {
  const KillerDetailsPage({
    Key? key,
  }) : super(key: key);
  @override
  KillerDetailsPageState createState() => KillerDetailsPageState();
}

class KillerDetailsPageState extends State<KillerDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final Killer killer = Modular.args as Killer;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(killer.name ?? ""),
      ),
      body: Column(
        children: const <Widget>[],
      ),
    );
  }
}
