import 'package:flutter/material.dart';

class TextFiledEditInfo extends StatelessWidget {
  const TextFiledEditInfo({
    super.key,
    required this.hintText,
    required this.icon,
  });
  final String hintText;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(.5),
                  offset: const Offset(1, 1),
                  blurRadius: 4,
                  spreadRadius: 1,
                  blurStyle: BlurStyle.normal,
                )
              ]),
          child: Container(
            height: 65,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: icon,
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: 2,
                  height: 30,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  hintText,
                  style: const TextStyle(color: Colors.grey, fontSize: 16),
                )
              ],
            ),
          )

          //  TextField(
          //     textAlign: TextAlign.left,
          //     decoration: InputDecoration(
          //         fillColor: Colors.white,
          //         filled: true,
          //         focusedBorder: const OutlineInputBorder(
          //             borderSide: BorderSide(
          //               width: 1,
          //               color: Colors.white,
          //             ),
          //             borderRadius: BorderRadius.all(Radius.circular(10))),
          //         enabledBorder: const OutlineInputBorder(
          //             borderSide: BorderSide(
          //               width: 1,
          //               color: Colors.white,
          //             ),
          //             borderRadius: BorderRadius.all(
          //               Radius.circular(10),
          //             )),
          //         hintText: hintText,
          //         prefixIcon: icon)),
          ),
    );
  }
}
