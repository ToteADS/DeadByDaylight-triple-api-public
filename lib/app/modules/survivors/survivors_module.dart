import 'package:deadbydaylighttapp/app/modules/survivors/survivors_Page.dart';
import 'package:deadbydaylighttapp/app/modules/survivors/survivors_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SurvivorsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SurvivorsStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SurvivorsPage()),
  ];
}
