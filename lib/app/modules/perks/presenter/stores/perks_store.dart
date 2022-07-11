import 'package:deadbydaylighttapp/app/entities/perk.dart';
import 'package:deadbydaylighttapp/app/modules/perks/domain/repositories/i_perks_repository.dart';
import 'package:flutter_triple/flutter_triple.dart';

import '../../domain/errors/perks_errors.dart';

typedef ListPerks = List<Perk>;

class PerksStore extends NotifierStore<PerksErrors, ListPerks> {
  final IPerksRepository repository;
  PerksStore(this.repository) : super([]) {
    fetchPerks();
  }

  fetchPerks() async {
    setLoading(true);
    try {
      final list = await repository.fetchAllPerks();
      update(list);
    } on PerksErrors catch (e) {
      setError(e);
    } finally {
      setLoading(false);
    }
  }
}
