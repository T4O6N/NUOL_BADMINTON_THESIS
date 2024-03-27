import 'package:flutter/material.dart';

class SelectedList extends StatefulWidget {
  const SelectedList({
    super.key,
  });

  @override
  State<SelectedList> createState() => _SelectedListState();
}

class _SelectedListState extends State<SelectedList> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 2,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  CheckboxListTile(
                    // value: Get.Put<ShopDetailController>().isChecked,
                    value: isChecked,
                    onChanged: (newValue) {
                      setState(() {
                        isChecked = newValue!;
                      });
                    },
                    title: const Text("ເວລາ: 15:00 - 16:00"),
                    subtitle: const Text("ລາຄາ:   350.000K"),
                    activeColor: Colors.green,
                    checkColor: Colors.white,
                    controlAffinity: ListTileControlAffinity.platform,
                  ),
                  Container(
                    color: Colors.grey,
                    width: double.infinity,
                    height: 2,
                  )
                ],
              ),
            );
          }),
    );
  }
}
