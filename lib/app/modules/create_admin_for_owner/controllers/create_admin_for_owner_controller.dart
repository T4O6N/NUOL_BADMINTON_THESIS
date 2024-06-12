// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/create_admin_for_owner/model/admin_model.dart';

class CreateAdminForOwnerController extends GetxController {
  var users = <User>[].obs;

  void addUser(String name, String email) {
    final newUser = User(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: name,
      email: email,
    );
    users.add(newUser);
  }

  void updateUser(String id, String name, String email) {
    final index = users.indexWhere((user) => user.id == id);
    if (index != -1) {
      users[index] = User(id: id, name: name, email: email);
    }
  }

  void deleteUser(String id) {
    users.removeWhere((user) => user.id == id);
  }

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
}
