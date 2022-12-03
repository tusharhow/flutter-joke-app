import 'package:flutter/cupertino.dart';
import 'package:flutter_joke_app/app/models/joke_model.dart';
import '../network/services/api_service.dart';



class JokesController extends ChangeNotifier {
  List<JokeModel> jokes = [];
  bool isLoading = false;

  JokesController() {
    getGames();
  }

  Future<void> getGames() async {
    isLoading = true;
    notifyListeners();
    jokes = await ApiService.getJokes();
    isLoading = false;
    notifyListeners();
  }
}