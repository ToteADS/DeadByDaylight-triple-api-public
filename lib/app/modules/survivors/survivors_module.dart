
import 'package:deadbydaylighttapp/app/core/api/api_dio.dart';
import 'package:deadbydaylighttapp/app/modules/survivors/external/datasources/survivors_datasource.dart';

import 'infra/repositories/survivors_repository.dart';
import 'presenter/pages/survivor_details_page.dart';
import 'presenter/pages/survivors_page.dart';
import 'presenter/stores/survivors_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SurvivorsModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SurvivorsStore(i.get())),
    Bind.lazySingleton((i) => SurvivorsRepository(i.get())),
    Bind.lazySingleton((i) => SurvivorsDatasource(i.get())),
    Bind.lazySingleton((i) => ApiDio()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const SurvivorsPage()),
     ChildRoute("/survivor", child: (_, args) => const SurvivorDetailsPage()),
  ];
}
