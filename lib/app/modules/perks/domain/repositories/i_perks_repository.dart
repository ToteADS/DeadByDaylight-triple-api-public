import 'package:deadbydaylighttapp/app/entities/perk.dart';

abstract class IPerksRepository {
  Future<List<Perk>> fetchAllPerks();
}
