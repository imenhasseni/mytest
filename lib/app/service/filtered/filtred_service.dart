
import 'package:mytest/app/modules/screens/home/modules/filtred_model.dart';

class FiltredService {
  Future<List<Filtred>> getAllFiltred() async {
    await Future.delayed(const Duration(seconds: 3));
    List<Filtred> list = [];

    list.add(Filtred(name: "NEW IN"));
    list.add(Filtred(name: "CLOTHING"));
    list.add(Filtred(name: "BOSS X FREDDIIE MERCURY"));
    list.add(Filtred(name: "SHOES"));
    return list;
  }
}