import 'package:flutter/material.dart';
import 'package:submission1/helper/util.dart';

class DropDownModel extends StatefulWidget {
  const DropDownModel({
    super.key,
    required this.modelsIds,
    this.currentModel,
    required this.onChanged,
  });

  final List<String> modelsIds;
  final String? currentModel; // Model yang dipilih saat ini
  final ValueChanged<String?> onChanged;

  @override
  State<DropDownModel> createState() => _DropDownModelState();
}

class _DropDownModelState extends State<DropDownModel> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: widget.modelsIds.map((String modelId) {
        return DropdownMenuItem<String>(
          value: modelId,
          child: Text(modelId),
        );
      }).toList(),
      value: widget.currentModel, // Gunakan currentModel dari widget
      onChanged: (value) {
        setState(() {
          widget.onChanged(value); // Panggil callback saat model berubah
        });
      },
      isExpanded: true, // Memastikan dropdown mengisi ruang yang tersedia
    );
  }
}