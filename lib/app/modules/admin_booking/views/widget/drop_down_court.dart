// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:nuol_badminton_thesis/app/modules/admin_booking/controllers/admin_booking_controller.dart';

// class ReusableDropdown extends StatelessWidget {
//   final String initialValue;
//   final List<String> options;
//   final ValueChanged<String> onChanged;
//   final String label;

//   ReusableDropdown({
//     Key? key,
//     required this.initialValue,
//     required this.options,
//     required this.onChanged,
//     required this.label,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final AdminBookingController controller = Get.put(AdminBookingController(), tag: label);

//     // Initialize the selectedItem with the initial value
//     controller.setSelectedItem(initialValue);

//     return Obx(() {
//       return DropdownButtonFormField<String>(
//         value: controller.selectedItem.value,
//         onChanged: (String? value) {
//           if (value != null) {
//             controller.setSelectedItem(value);
//             onChanged(value);
//           }
//         },
//         decoration: InputDecoration(
//           labelText: label,
//           border: OutlineInputBorder(),
//         ),
//         items: options.map<DropdownMenuItem<String>>((String value) {
//           return DropdownMenuItem<String>(
//             value: value,
//             child: Row(
//               children: [
//                 const Icon(Icons.star),
//                 const SizedBox(width: 10),
//                 Text(value),
//               ],
//             ),
//           );
//         }).toList(),
//       );
//     });
//   }
// }
