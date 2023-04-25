import 'package:covid/covid/model/covid_model.dart';
import 'package:covid/utils/api_helper.dart';
import 'package:flutter/widgets.dart';

class CovidProvider extends ChangeNotifier {
  Future<CovidModel> getCoronaData() async {
    Apihelper apihelper = Apihelper();
    CovidModel coronaModel = await apihelper.getCoronaApi();
    return coronaModel;
  }
}