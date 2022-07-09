import 'package:deadbydaylighttapp/app/entities/killer.dart';
import 'package:deadbydaylighttapp/app/modules/killers/domain/repositories/i_killer_repository.dart';
import 'package:deadbydaylighttapp/app/modules/killers/infra/datasources/i_killer_datasource.dart';

import '../../domain/errors/killer_errors.dart';

class KillerRepository implements IKillerRepository {
  final IKillerDatasource datasource;

  KillerRepository(this.datasource);

  @override
  Future<List<Killer>> fetchAllKillers() async {
    try {
      var response = await datasource.fetchAllKillers();
      return response;
    } on Exception catch (_) {
      throw FetchAllKillersError;
    }
  }
}
