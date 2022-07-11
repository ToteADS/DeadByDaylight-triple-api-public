import 'package:deadbydaylighttapp/app/core/api/i_api.dart';
import 'package:deadbydaylighttapp/app/entities/survivor.dart';
import 'package:deadbydaylighttapp/app/modules/survivors/infra/datasources/i_survivors_datasource.dart';

class SurvivorsDatasource implements ISurvivorsDatasource {
  final IApi api;

  SurvivorsDatasource(this.api);

  @override
  Future<List<Survivor>> fetchAllSurvivors() async{
    var response = await api.get("survivors");
    List<Survivor> list = [];
    for (var element in response.data) {
      list.add(Survivor.fromMap(element));
    }
    return list;
  }
}
