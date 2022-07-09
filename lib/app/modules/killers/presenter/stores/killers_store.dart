import 'package:deadbydaylighttapp/app/entities/killer.dart';
import 'package:flutter_triple/flutter_triple.dart';

import '../../domain/errors/killer_errors.dart';
import '../../domain/repositories/i_killer_repository.dart';

typedef KillerList = List<Killer>;

class KillersStore extends NotifierStore<KillerErrors, KillerList> {
  final IKillerRepository repository;

  KillersStore(this.repository) : super([]) {
    fetchKillers();
  }

  fetchKillers() async {
    setLoading(true);
    try {
      final list = await repository.fetchAllKillers();
      update(list);
    } on KillerErrors catch (e) {
      setError(e);
    } finally {
      setLoading(false);
    }
  }
}
