import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../pages/home_page_containers/container1/container1.dart';
import '../pages/home_page_containers/container2/container2.dart';
import '../pages/home_page_containers/container3/container3.dart';
import '../pages/home_page_containers/container4/container4.dart';
import '../utils/colors.dart';
import '../widgets/bottom/bottom.dart';
import '../widgets/navbar/navbar.dart';

class HomepageController extends GetxController {
  final ScrollController scrollController = ScrollController();
  final widgets = <Widget>[].obs;
  final isLoadingMore = false.obs;
  final allDataLoaded = false.obs;

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(_onScroll);
    _loadInitialData();
  }

  Future<void> _loadInitialData() async {
    await Future.delayed(const Duration(milliseconds: 30));
    widgets.addAll([
      const Navbar(),
      const Container1(),
      _buildDivider(Get.size),
      const Container2(),
      _buildDivider(Get.size),
      const Container3(),
      _buildDivider(Get.size),
      const Container4(),
      _buildDivider(Get.size),
      Bottom(),
    ]);
  }

  void _onScroll() {
    if (scrollController.position.pixels == scrollController.position.maxScrollExtent && !isLoadingMore.value && !allDataLoaded.value) {
      _loadMoreData();
    }
  }

  Future<void> _loadMoreData() async {
    isLoadingMore.value = true;

    // Simulate loading additional data
    await Future.delayed(const Duration(milliseconds: 30));

    isLoadingMore.value = false;
    allDataLoaded.value = true; // Assuming no more data to load
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }

  static Widget _buildDivider(Size size) {
    return Container(
      width: size.width,
      height: 0.2,
      color: AppColors.buttonColor,
    );
  }
}