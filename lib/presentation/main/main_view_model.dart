import 'package:flutter/material.dart';
import 'package:image_search_app_cleanarch/domain/use_case/search_all_image_with_cache_use_case.dart';

import '../../domain/model/image_item.dart';

class MainViewModel extends ChangeNotifier {
  final _searchNormalUseCase = SearchAllImageWithCacheUseCase();

  List<ImageItem> imageItems = [];
  bool isLoading = false;

  Future<void> fetchImages(String query) async {
    isLoading = true;
    notifyListeners();

    imageItems = await _searchNormalUseCase.execute(query);
    isLoading = false;
    notifyListeners();
  }
}
