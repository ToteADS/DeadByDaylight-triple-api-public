import 'package:deadbydaylighttapp/app/core/api/i_api.dart';
import 'package:deadbydaylighttapp/app/entities/killer.dart';
import 'package:deadbydaylighttapp/app/modules/killers/infra/datasources/i_killer_datasource.dart';

class KillerDatasource implements IKillerDatasource {
  final IApi api;

  KillerDatasource(this.api);

  @override
  Future<List<Killer>> fetchAllKillers() async {
    var response = await api.get("killers");
    List<Killer> list = [];
    for (var element in response.data) {
      list.add(Killer.fromMap(element));
    }
    return list;
  }
}
