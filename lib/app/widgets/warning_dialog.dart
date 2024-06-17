import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

AwesomeDialog warningDialog({
  required String des,
  required BuildContext context,
  Function()? btnCancelOnPress,
  Function()? btnOkOnPress,
}) {
  return AwesomeDialog(
    dismissOnTouchOutside: false,
    context: context,
    btnCancelText: "cancel",
    btnOkText: "okay",
    dialogType: DialogType.warning,
    animType: AnimType.bottomSlide,
    title: 'ເເຈ້ງເຕືອນ',
    desc: des,
    btnCancelOnPress: btnCancelOnPress,
    btnOkOnPress: btnOkOnPress,
  )..show();
}
