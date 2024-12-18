import 'package:flutter/foundation.dart';
import 'package:submission1/helper/util.dart';

class UserModelsProviders with ChangeNotifier {
  String _selectedModel = defaultModel;

  String get SelectedModel => _selectedModel;

  void setSeletctedModel(String? model) {
    _selectedModel = model!;
    notifyListeners();
  }
}