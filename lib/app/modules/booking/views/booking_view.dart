// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:nuol_badminton_thesis/app/constants/app_color.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/modules/booking/model/booking_history.dart';
import 'package:nuol_badminton_thesis/app/modules/booking/views/widgets/listview_stack_booking.dart';
import 'package:nuol_badminton_thesis/app/modules/booking/views/widgets/show_duration_booking.dart';

import '../controllers/booking_controller.dart';

class BookingView extends GetView<BookingController> {
  const BookingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final BookingController bookingController = Get.put(BookingController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking History'),
      ),
      body: FutureBuilder<List<BookingHistory>>(
        future: bookingController.fetchBookingHistory(), // Replace with your fetch method
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error fetching data: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No booking history available.'));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return _buildBookingCard(snapshot.data![index]);
              },
            );
          }
        },
      ),
    );
  }

  Widget _buildBookingCard(BookingHistory booking) {
    return Card(
      margin: EdgeInsets.all(8),
      child: ListTile(
        title: Text('Booking ID: ${booking.id}'),
        subtitle: Text('Booking Date: ${DateFormat('yyyy-MM-dd HH:mm').format(DateTime.parse(booking.courtBooking.bookingDate))}'), // Example date formatting
        onTap: () {
          // Handle onTap if needed
        },
      ),
    );
  }
}
//  DateContainer(), 
