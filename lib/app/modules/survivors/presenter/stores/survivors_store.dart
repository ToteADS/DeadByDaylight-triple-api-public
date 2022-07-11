import 'package:deadbydaylighttapp/app/entities/survivor.dart';
import 'package:deadbydaylighttapp/app/modules/survivors/domain/errors/survivors_errors.dart';
import 'package:deadbydaylighttapp/app/modules/survivors/domain/repositories/i_survivors_repository.dart';
import 'package:flutter_triple/flutter_triple.dart';

typedef SurvivorsList = List<Survivor>;

class SurvivorsStore extends NotifierStore<SurvivorsErrors, SurvivorsList> {
  final ISurvivorsRepository repository;

  SurvivorsStore(this.repository) : super([]) {
    fetchSurvivors();
  }

  fetchSurvivors() async {
    setLoading(true);
    try {
      final list = await repository.fetchAllSurvivors();
      update(list);
    } on SurvivorsErrors catch (e) {
      setError(e);
    } finally {
      setLoading(false);
    }
  }
}
