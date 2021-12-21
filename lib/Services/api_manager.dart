import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Models/news_model.dart';

class ApiManager {
  Future<Datum> getNews() async {
    var response =
        await http.get(Uri.parse('https://api.first.org/data/v1/news'));
    if (response.statusCode == 200) {
      return Datum.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load News');
    }
  }
}
