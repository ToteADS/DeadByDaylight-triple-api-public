import 'package:deadbydaylighttapp/app/entities/perk.dart';

abstract class IPerksDatasource {
  Future<List<Perk>> fetchAllPerks();
}
