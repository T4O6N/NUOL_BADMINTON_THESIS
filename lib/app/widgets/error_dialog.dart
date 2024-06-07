import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

AwesomeDialog errorDialog({
  required String des,
  required BuildContext context,
  Function()? btnCancelOnPress,
  Function()? btnOkOnPress,
}) {
  return AwesomeDialog(
    context: context,
    btnCancelText: "cancel",
    btnOkText: "okay",
    dialogType: DialogType.error,
    animType: AnimType.bottomSlide,
    title: 'error',
    desc: des,
    btnCancelOnPress: btnCancelOnPress,
    btnOkOnPress: btnOkOnPress,
  )..show();
}
