import 'dart:convert';
import 'package:covid/covid/model/covid_model.dart';
import 'package:http/http.dart' as http;

class Apihelper {
  Future<CovidModel> getCoronaApi() async {
    String apiLink =
        "https://corona-virus-world-and-india-data.p.rapidapi.com/api";
    Uri uri = Uri.parse(apiLink);
    var response = await http.get(uri, headers: {
      'X-RapidAPI-Key': '4f83946f48mshca990122bc500f1p19f8b9jsn13c11a386db0',
      'X-RapidAPI-Host': 'corona-virus-world-and-india-data.p.rapidapi.com',
      'content-type': 'application/octet-stream',
    });
    var json = jsonDecode(response.body);

    CovidModel covidModel = CovidModel.fromJson(json);

    return covidModel;
  }
}