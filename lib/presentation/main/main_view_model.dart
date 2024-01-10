import 'package:flutter/material.dart';

import '../../domain/model/image_item.dart';

class MainViewModel extends ChangeNotifier {
  List<ImageItem> imageItems = [];
  bool isLoading = false;

  Future<void> fetchImages(String query) async {
    isLoading = true;
    notifyListeners();

    isLoading = false;
    notifyListeners();
  }
}
