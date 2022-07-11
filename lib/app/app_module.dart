import 'package:deadbydaylighttapp/app/modules/killers/killers_module.dart';
import 'package:deadbydaylighttapp/app/modules/survivors/survivors_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
    ModuleRoute("/killers", module: KillersModule()),
    ModuleRoute("/survivors", module: SurvivorsModule()),
  ];
}
