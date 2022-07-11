
import 'package:deadbydaylighttapp/app/core/api/api_dio.dart';
import 'package:deadbydaylighttapp/app/modules/perks/presenter/pages/perks_details_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'external/datasources/perks_datasource.dart';
import 'infra/repositories/perks_repository.dart';
import 'presenter/pages/perks_page.dart';
import 'presenter/stores/perks_store.dart';

class PerksModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PerksStore(i.get())),
    Bind.lazySingleton((i) => ApiDio()),
    Bind.lazySingleton((i) => PerksDatasource(i.get())),
    Bind.lazySingleton((i) => PerksRepository(i.get())),

  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const PerksPage()),
    ChildRoute('/perk', child: (_, args) => const PerksDetailsPage()),
  ];
}
