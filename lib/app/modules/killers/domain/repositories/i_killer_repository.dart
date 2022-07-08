import 'package:deadbydaylighttapp/app/entities/killer.dart';

abstract class IKillerRepository {
  Future<List<Killer>> fetchAllKillers();
}
