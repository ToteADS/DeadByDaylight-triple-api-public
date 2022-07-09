import 'package:deadbydaylighttapp/app/core/api/api_dio.dart';
import 'package:deadbydaylighttapp/app/modules/killers/external/datasources/killer_datasource.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_triple_bind/modular_triple_bind.dart';
import 'infra/repositories/killer_repository.dart';
import 'presenter/pages/killer_details_page.dart';
import 'presenter/pages/killers_page.dart';
import 'presenter/stores/killers_store.dart';

class KillersModule extends Module {
  @override
  final List<Bind> binds = [
    TripleBind.lazySingleton<KillersStore>((i) => KillersStore(i.get())),
    Bind.lazySingleton((i) => KillerRepository(i.get())),
    Bind.lazySingleton((i) => KillerDatasource(i.get())),
    Bind.lazySingleton((i) => ApiDio()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const KillersPage()),
    ChildRoute("/killer", child: (_, args) => const KillerDetailsPage()),
  ];
}
