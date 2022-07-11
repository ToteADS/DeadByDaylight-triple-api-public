import 'package:deadbydaylighttapp/app/entities/survivor.dart';

abstract class ISurvivorsRepository {
  Future<List<Survivor>> fetchAllSurvivors();
}
