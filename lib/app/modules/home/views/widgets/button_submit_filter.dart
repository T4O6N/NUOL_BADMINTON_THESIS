import 'package:flutter/material.dart';

import 'package:nuol_badminton_thesis/app/constants/app_color.dart';

class ButtonSubmitFilter extends StatelessWidget {
  const ButtonSubmitFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.primaryColor,
        ),
        child: const Padding(
          padding: EdgeInsets.all(12),
          child: Text(
            "Submit",
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
