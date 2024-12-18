class AiModelsModel {
  final String object;
  final List<ModelData> data;

  AiModelsModel({
      required this.object,
      required this.data
  });

  factory AiModelsModel.fromJson(Map<String, dynamic> json) {
    return AiModelsModel(
      object: json['object'],
      data: List<ModelData>.from(json['data'].map((item) => ModelData.fromJson(item))),
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'object': object,
      'data': data.map((item) => item.toJson()).toList(),
    };
  }
}

class ModelData {
  final String id;
  final String object;
  final int created;
  final String ownedBy;

  ModelData({
    required this.id,
    required this.object,
    required this.created,
    required this.ownedBy,
  });

  factory ModelData.fromJson(Map<String, dynamic> json) {
    return ModelData(
      id: json['id'],
      object: json['object'],
      created: json['created'],
      ownedBy: json['owned_by'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'object': object,
      'created': created,
      'owned_by': ownedBy,
    };
  }
}