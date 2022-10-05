import 'package:dio/dio.dart';

import '../models/models.dart';

class MyModels {
  static MyModels? _singleton;

  late Models products;
  Dio appDioClient = Dio();

  factory MyModels() {
    if (_singleton == null) {
      _singleton = MyModels._internal();
    }
    return _singleton!;
  }
  MyModels._internal() {
    products = Models();
  }
}