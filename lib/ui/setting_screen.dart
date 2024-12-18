import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:submission1/widget/drop_down_model_widget.dart';
import 'package:submission1/services/api_service.dart';
import 'package:submission1/providers/user_models_provider.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  List<String> modelIds = []; // Menyimpan ID model
  bool isLoading = true; // Menyimpan status loading

  @override
  void initState() {
    super.initState();
    fetchModels(); // Panggil fungsi untuk mengambil data model
  }

  Future<void> fetchModels() async {
    final models = await ApiService.getModels();
    if (models != null) {
      setState(() {
        modelIds = models.data.map((model) => model.id).toList();
        final userModelProvider = Provider.of<UserModelsProviders>(context, listen: false);
        userModelProvider.setSeletctedModel(modelIds.contains(userModelProvider.SelectedModel) ? userModelProvider.SelectedModel : (modelIds.isNotEmpty ? modelIds[0] : null));
        isLoading = false;
      });
    } else {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        leading: Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: SizedBox(
            width: 64.0,
            height: 64.0,
            child: Image.asset(
              'images/ChatAi-removebg.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: const Text('Settings'),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Consumer<UserModelsProviders>(
        builder: (context, userModelProvider, child) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Text(
                      'Model',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: DropDownModel(
                        modelsIds: modelIds,
                        currentModel: userModelProvider.SelectedModel,
                        onChanged: (value) {
                          userModelProvider.setSeletctedModel(value!);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}