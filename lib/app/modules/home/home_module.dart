import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_triple_bind/modular_triple_bind.dart';
import 'presenter/stores/home_store.dart';

import 'presenter/pages/home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    TripleBind.singleton<HomeStore>((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const HomePage()),
  ];
}
