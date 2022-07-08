import 'package:deadbydaylighttapp/app/modules/perks/perks_Page.dart';
import 'package:deadbydaylighttapp/app/modules/perks/perks_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PerksModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PerksStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => PerksPage()),
  ];
}
