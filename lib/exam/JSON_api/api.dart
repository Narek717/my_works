import 'package:dio/dio.dart';

import '../models/models.dart';
class ModelsApi {
  final Dio appDioClient;

  ModelsApi.Models(
      this.appDioClient,
      );
  Future<List<Models>> getModelsData() async {
    List<Models> models = [];

    final result = await appDioClient.get(
      'https://github.com/narekpog/my-json/blob/master/db.json',
    );
    if (result.data is List) {

      models = result.data.first
          .map<Models>(
            (e) => Models.fromJson(e),
      )
          .toList();
    }
    return models;
  }
}