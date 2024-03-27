import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:nuol_badminton_thesis/app/modules/home/controllers/home_controller.dart';

class DropdownWidgetFilter extends StatelessWidget {
  const DropdownWidgetFilter({
    super.key,
    required this.hintText,
  });
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 226, 226, 226),
        borderRadius: BorderRadius.circular(15),
      ),
      child: GetBuilder<HomeController>(
        builder: (controller) => DropdownButton<String>(
          value: controller.selectedAnimal,
          onChanged: controller.updateSelectedAnimal,
          hint: Text(
            hintText,
            style: const TextStyle(
              color: Colors.black,
              fontFamily: 'NotoSansLao',
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          underline: Container(),
          icon: const Icon(
            Icons.arrow_drop_down_outlined,
            color: Colors.green,
            size: 40,
          ),
          isExpanded: true,
          items: controller.animals
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      e,
                      style: const TextStyle(
                        fontSize: 18,
                        fontFamily: 'NotoSansLao',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
          selectedItemBuilder: (BuildContext context) => controller.animals
              .map((e) => Center(
                    child: Text(
                      e,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'NotoSansLao',
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
