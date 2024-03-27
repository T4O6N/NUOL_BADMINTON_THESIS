import 'package:flutter/material.dart';
import 'package:nuol_badminton_thesis/app/modules/booking/views/widgets/booking_stack_widget.dart';

class ListViewStackBooking extends StatelessWidget {
  const ListViewStackBooking({
    super.key,
    required this.listNum,
  });
  final int listNum;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 12),
          child: BookingStackWidget(),
        );
      },
    );
  }
}
