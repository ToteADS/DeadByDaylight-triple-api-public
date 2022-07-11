import 'package:deadbydaylighttapp/app/entities/survivor.dart';
import 'package:deadbydaylighttapp/app/modules/survivors/domain/errors/survivors_errors.dart';
import 'package:deadbydaylighttapp/app/modules/survivors/domain/repositories/i_survivors_repository.dart';

import '../datasources/i_survivors_datasource.dart';

class SurvivorsRepository implements ISurvivorsRepository {
  final ISurvivorsDatasource datasource;

  SurvivorsRepository(this.datasource);

  @override
  Future<List<Survivor>> fetchAllSurvivors() async {
    try {
      return await datasource.fetchAllSurvivors();
    } on Exception catch (_) {
      throw FetchAllSurvivorsErrors();
    }
  }
}
