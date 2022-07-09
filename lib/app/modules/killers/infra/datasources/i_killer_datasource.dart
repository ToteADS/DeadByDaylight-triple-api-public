import '../../../../entities/killer.dart';

abstract class IKillerDatasource {
  Future<List<Killer>> fetchAllKillers();
}
