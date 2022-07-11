import 'package:deadbydaylighttapp/app/entities/perk.dart';
import 'package:deadbydaylighttapp/app/modules/perks/domain/errors/perks_errors.dart';
import 'package:deadbydaylighttapp/app/modules/perks/domain/repositories/i_perks_repository.dart';
import 'package:deadbydaylighttapp/app/modules/perks/infra/datasources/i_perks_datasource.dart';

class PerksRepository implements IPerksRepository {
  final IPerksDatasource datasource;

  PerksRepository(this.datasource);

  @override
  Future<List<Perk>> fetchAllPerks() async {
    try {
      return await datasource.fetchAllPerks();
    } on Exception catch (_) {
      throw FetchAllPerksErros();
    }
  }
}
