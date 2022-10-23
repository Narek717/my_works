import 'package:flutter/material.dart';
import 'package:indigo/exam/tools/dif_colors.dart';

import '../../../api/single_api.dart';
import '../../models/purchases_model.dart';

class PurchasesProvider extends ChangeNotifier {

  PurchasesModel? purchasesModel;
  List<PurchasesModel>? purchases;
  bool isLoading = false;
  List<Color> colors = [];

  Colors5 colors5 = Colors5();

  PurchasesProvider() {
    getData();
    changeColors();
  }

  void getData({bool initial = true}) async {
    isLoading = true;
    if (!initial) notifyListeners();

    final result = await SingleApi().purchasesApi.getPurchasesData();

    if (result.isEmpty) {
    } else {
      isLoading = false;
      purchases = result;

      notifyListeners();
    }

    notifyListeners();
  }

  void changeColors() {
    colors = colors5.colors;
    notifyListeners();
  }
}