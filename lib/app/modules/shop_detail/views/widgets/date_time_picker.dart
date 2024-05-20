// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:nuol_badminton_thesis/app/constants/app_color.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({
    super.key,
  });

  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  DateTimeRange selectedDate = DateTimeRange(start: DateTime.now(), end: DateTime.now());

  @override
  Widget build(BuildContext context) {
    // Object arguments;
    return Row(
      children: <Widget>[
        const Text(
          "ວັນທີ 22/07/2023",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        GestureDetector(
          onTap: () {
            showDatePicker(
              context: context,
              initialEntryMode: DatePickerEntryMode.calendarOnly,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(3000),
              builder: (context, child) {
                return Theme(
                    data: ThemeData.light().copyWith(
                      colorScheme: const ColorScheme.light(
                        primary: AppColors.primaryColor, // Change the primary color
                        onPrimary: Colors.white, // Change the text color on the primary color
                      ),
                      textButtonTheme: TextButtonThemeData(
                        style: TextButton.styleFrom(
                            // primary: AppColors.primaryColor, // Change the text color of buttons
                            foregroundColor: AppColors.primaryColor),
                      ),
                    ),
                    child: child!);
              },
            );
          },

          // onTap: () async {
          //   final DateTimeRange? dateTimeRange = await showDateRangePicker(
          //     context: context,
          //     firstDate: DateTime(2000),
          //     lastDate: DateTime(3000),
          //     builder: (context, child) {
          //   return Theme(primaryColor:  Colors.black, data: null,
          //   child: child)
          //     },
          //   );
          //   if (dateTimeRange != null) {
          //     setState(() {
          //       selectedDate = dateTimeRange;
          //     });
          //   }
          // },
          // onTap: () {
          //   setState(() {
          //     DatePickerDialog(
          //       initialDate: DateTime.now(),
          //       firstDate: DateTime(2000),
          //       lastDate: DateTime(3000),
          //       initialEntryMode: DatePickerEntryMode.calendarOnly,
          //     );
          //   });
          // },
          child: const Icon(
            Icons.calendar_month_outlined,
            color: AppColors.primaryColor,
          ),
        )
      ],
    );
  }
}
