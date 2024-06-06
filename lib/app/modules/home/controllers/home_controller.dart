// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var isLoading = false.obs;
  final List<String> _animals = ["Dog", "Cat", "Crocodile", "Dragon"];
  String? _selectedAnimal;
  List<String> get animals => _animals;
  String? get selectedAnimal => _selectedAnimal;
  final List<String> court = ['A1', 'B2', 'C3', 'D4', 'E5', 'F6', 'G7', 'H8', 'I9', 'J10'];
  

  void updateSelectedAnimal(String? value) {
    _selectedAnimal = value;
    debugPrint("You selected $_selectedAnimal");
    update();
  }

  //from chatgpt
  RxString dropdownValue = 'Dog'.obs; // Use .obs to make it reactive

  void changeDropdownValue(String newValue) {
    dropdownValue.value = newValue;
  }

  Future<void> loadList() async {
    await Future.delayed(const Duration(seconds: 7));
    isLoading.value = false;
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
