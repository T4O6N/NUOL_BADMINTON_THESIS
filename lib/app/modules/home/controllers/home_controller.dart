// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/home/model/court.dart';

class HomeController extends GetxController {
  var isLoading = false.obs;
  final List<String> _animals = ["Dog", "Cat", "Crocodile", "Dragon"];
  String? _selectedAnimal;
  List<String> get animals => _animals;
  String? get selectedAnimal => _selectedAnimal;
  final List<String> court = ['A1', 'B2', 'C3', 'D4', 'E5', 'F6', 'G7', 'H8', 'I9', 'J10'];
  final List<String> imageCourt = [
    'assets/images/court.jpeg',
    'assets/images/3.jpg',
    'assets/images/2.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpg',
    'assets/images/7.jpg',
    'assets/images/8.jpg',
    'assets/images/9.jpg',
    'assets/images/10.jpg',
  ];

  var courts = <Court>[].obs;
  void fetchCourts() {
    var courtResults = [
      Court(id: '1', name: 'A1', imageUrl: 'assets/images/court.jpeg', price: 80000),
      Court(id: '2', name: 'B2', imageUrl: 'assets/images/3.jpg', price: 80000),
      Court(id: '3', name: 'C3', imageUrl: 'assets/images/2.jpg', price: 80000),
      Court(id: '4', name: 'D4', imageUrl: 'assets/images/4.jpg', price: 80000),
      Court(id: '5', name: 'E5', imageUrl: 'assets/images/5.jpg', price: 80000),
      Court(id: '6', name: 'F6', imageUrl: 'assets/images/6.jpg', price: 80000),
      Court(id: '7', name: 'G7', imageUrl: 'assets/images/7.jpg', price: 80000),
      Court(id: '8', name: 'H8', imageUrl: 'assets/images/8.jpg', price: 80000),
      Court(id: '9', name: 'I9', imageUrl: 'assets/images/9.jpg', price: 80000),
      Court(id: '10', name: 'J10', imageUrl: 'assets/images/10.jpg', price: 80000),
    ];
    courts.assignAll(courtResults);
  }

  void bookCourt(String id) {
    var index = courts.indexWhere((court) => court.id == id);
    if (index != -1) {
      courts[index] = Court(
        id: courts[index].id,
        name: courts[index].name,
        imageUrl: courts[index].imageUrl,
        price: 80000,
      );
      courts.refresh();
    }
  }

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
    fetchCourts();
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
