import 'package:dio/dio.dart';

import '../../constants.dart';
import '../../models/joke_model.dart';

class ApiService {
  static final _dio = Dio();

  static Future<List<JokeModel>> getJokes() async {
    var response = await _dio.get(BASE_URL);
    if (response.statusCode == 200) {
      var jokes = JokeModel.fromJson(response.data);
      return [jokes];
    } else {
      throw Exception('Failed to load games');
    }
  }
}
