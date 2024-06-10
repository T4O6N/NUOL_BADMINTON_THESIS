import 'package:flutter/material.dart';
import 'package:nuol_badminton_thesis/app/widgets/reusetextformfield.dart';

class ContactInfoWidget extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController phoneController;

  const ContactInfoWidget({
    Key? key,
    required this.nameController,
    required this.phoneController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;

    return Container(
      // height: size.height * .3,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "ຂໍ້ມູນຕິດຕໍ່",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const Divider(),
            const SizedBox(height: 8),
            ReusableTextFormField(
              controller: nameController,
              labelText: 'ຊື່',
              hintText: 'ປ້ອນຊື້',
            ),
            const SizedBox(height: 8),
            ReusableTextFormField(
              maxLength: 10,
              keyboardType: TextInputType.number,
              controller: phoneController,
              labelText: 'ເບີໂທ',
              hintText: 'ປ້ອນເບີໂທ',
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
