import 'package:deadbydaylighttapp/app/entities/survivor.dart';

abstract class ISurvivorsDatasource {
  Future<List<Survivor>> fetchAllSurvivors();
}