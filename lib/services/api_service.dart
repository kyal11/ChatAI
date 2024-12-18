import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:submission1/helper/util.dart';
import 'package:submission1/models/ai_models_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiService {
  static String? get apiKey => dotenv.env['API_KEY'] ?? null;
  static String? get baseUrl => dotenv.env['BASE_URL'] ?? null;

  static Future<AiModelsModel?> getModels() async {
    try {
      print(baseUrl);
      print(apiKey);
      var response = await http.get(
        Uri.parse("$baseUrl/models"),
        headers: {'Authorization': 'Bearer $apiKey'},
      );

      if (response.statusCode != 200) {
        throw HttpException("Request failed with status: ${response.statusCode}");
      }

      Map<String, dynamic> jsonResponse = jsonDecode(response.body);

      if (jsonResponse['error'] != null) {
        print("API Error: ${jsonResponse['error']['message']}");
        throw HttpException(jsonResponse['error']['message']);
      }


      print(AiModelsModel.fromJson(jsonResponse));

      return AiModelsModel.fromJson(jsonResponse);

    } catch (error) {
      // Tangani error
      print("Error occurred: $error");
      return null; // Kembalikan null jika terjadi error
    }
  }
}
