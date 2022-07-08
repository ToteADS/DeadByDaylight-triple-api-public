import 'package:deadbydaylighttapp/app/entities/killer.dart';
import 'package:flutter_triple/flutter_triple.dart';

import '../../domain/repositories/i_killer_repository.dart';

typedef KillerList = List<Killer>;

class KillersStore extends NotifierStore<Exception, KillerList> {
  final IKillerRepository repository;

  KillersStore(this.repository) : super([]);

  fetchKillers() async {
    setLoading(true);
    try {
      final list = await repository.fetchAllKillers();
      update(list);
    } on Exception catch (e) {
      setError(e);
    } finally {
      setLoading(false);
    }
  }
}
