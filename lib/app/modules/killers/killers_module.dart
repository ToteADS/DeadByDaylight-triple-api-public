import 'package:deadbydaylighttapp/app/modules/killers/killers_Page.dart';
import 'package:deadbydaylighttapp/app/modules/killers/killers_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class KillersModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => KillersStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => KillersPage()),
  ];
}
