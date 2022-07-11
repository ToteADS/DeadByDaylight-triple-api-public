import 'package:deadbydaylighttapp/app/core/api/i_api.dart';
import 'package:deadbydaylighttapp/app/entities/perk.dart';
import 'package:deadbydaylighttapp/app/modules/perks/infra/datasources/i_perks_datasource.dart';

class PerksDatasource implements IPerksDatasource {
  final IApi api;

  PerksDatasource(this.api);

  @override
  Future<List<Perk>> fetchAllPerks() async {
    var response = await api.get("perks");
    List<Perk> list = [];
    for (var element in response.data) {
      var perk = Perk.fromMap(element);

      if (perk.lang?.contains("en") ?? false) {
        list.add(perk);
      }
    }
    return list;
  }
}
