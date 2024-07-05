import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'package:nuol_badminton_thesis/app/modules/choose_schedule/param/list_court.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/views/widget/detail_booking_view.dart';
import 'package:nuol_badminton_thesis/app/modules/home/model/court.dart';
import 'package:nuol_badminton_thesis/app/widgets/booking_botton.dart';
import 'package:nuol_badminton_thesis/app/widgets/number_format.dart';

class ChooseScheduleStfView extends StatefulWidget {
  final Court court;
  const ChooseScheduleStfView({super.key, required this.court});

  @override
  State<ChooseScheduleStfView> createState() => _ChooseScheduleStfViewState();
}

class _ChooseScheduleStfViewState extends State<ChooseScheduleStfView> {
  final List<String> timeSlots = ['9:00 AM - 10:00 AM', '10:00 AM- 11:00 AM', '11:00 AM- 12:00 PM', '12:00 PM- 1:00 PM', '1:00 PM - 2:00 PM', '2:00 PM - 3:00 PM', '3:00 PM - 4:00 PM', '4:00 PM - 5:00 PM', '5:00 PM - 6:00 PM', '6:00 PM - 7:00 PM', '7:00 PM - 8:00 PM', '8:00 PM - 9:00 PM', '9:00 PM - 10:00 PM', '10:00 PM - 11:00 PM'];

  List<ListCourt> bookingDetails = [];
  DateTime _selectedDate = DateTime.now();
  int totalPrice = 0;
  final int pricePerSlot = 80000;
  final int discount = 20000;

  @override
  void initState() {
    super.initState();
    _initializeBookingDetails(_selectedDate);
  }

  void _initializeBookingDetails(DateTime date) {
    setState(() {
      bookingDetails.add(ListCourt(date: DateFormat('yyyy-MM-dd').format(date), durationTime: []));
    });
  }

  void _calculateTotalPrice() {
    totalPrice = bookingDetails.fold(
      0,
      (sum, courtModel) => sum + (courtModel.durationTime.length * pricePerSlot),
    );
  }

  void _addToCart() {
    final selectedCourtModels = bookingDetails.where((courtModel) => courtModel.durationTime.isNotEmpty).toList();

    if (selectedCourtModels.isEmpty) {
      Get.snackbar('Error', 'Please select at least one time slot', backgroundColor: Colors.red, colorText: Colors.white);
      return;
    }

    Get.to(
      DetailBookingView(
        court: widget.court,
        bookingDetails: selectedCourtModels,
        totalPrice: totalPrice,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'ເລືອກຕາຕະລາງເວລາ',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: _buildDatePicker(),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      height: size.height * .13,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(8),
                            width: size.width * .24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage(widget.court.imageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "ເດີ່ນຕີດອກ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("ຄອດ : ${widget.court.name}"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      height: size.height * 0.4,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "ເວລາ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Divider(),
                              ],
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: timeSlots.length,
                              itemBuilder: (context, index) {
                                final timeSlot = timeSlots[index];
                                final currentCourtModel = bookingDetails.firstWhere(
                                  (courtModel) => courtModel.date == DateFormat('yyyy-MM-dd').format(_selectedDate),
                                  orElse: () => const ListCourt(date: '', durationTime: []),
                                );

                                final isSelected = currentCourtModel.durationTime.contains(timeSlot);
                                final isTimePassed = _isTimePassed(timeSlot);
                                final isCurrentDate = _selectedDate.isAtSameMomentAs(DateTime.now());
                                final canChangeTimeSlot = isCurrentDate || !isTimePassed;

                                return CheckboxListTile(
                                  activeColor: Colors.green,
                                  title: Text(timeSlot),
                                  value: isSelected,
                                  onChanged: canChangeTimeSlot
                                      ? (bool? value) {
                                          setState(() {
                                            if (value == true) {
                                              final updatedCourtModel = currentCourtModel.copyWith(
                                                durationTime: [...currentCourtModel.durationTime, timeSlot],
                                              );
                                              final index = bookingDetails.indexWhere(
                                                (courtModel) => courtModel.date == updatedCourtModel.date,
                                              );
                                              bookingDetails[index] = updatedCourtModel;
                                            } else {
                                              final updatedCourtModel = currentCourtModel.copyWith(
                                                durationTime: currentCourtModel.durationTime.where((slot) => slot != timeSlot).toList(),
                                              );
                                              final index = bookingDetails.indexWhere(
                                                (courtModel) => courtModel.date == updatedCourtModel.date,
                                              );
                                              bookingDetails[index] = updatedCourtModel;
                                            }
                                            _calculateTotalPrice();
                                          });
                                        }
                                      : null,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "ລາຄາລວມ",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        NumberFormatter.formatPriceKip(totalPrice),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    BookingButton(onTap: () => _addToCart()),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDatePicker() {
    return DatePicker(
      DateTime.now(),
      height: 100,
      width: 80,
      initialSelectedDate: DateTime.now(),
      selectionColor: Colors.green,
      selectedTextColor: Colors.white,
      daysCount: 7,
      dateTextStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      onDateChange: (date) {
        setState(() {
          _selectedDate = date;
          if (!bookingDetails.any((courtModel) => courtModel.date == DateFormat('yyyy-MM-dd').format(date))) {
            _initializeBookingDetails(date);
          }
        });
      },
    );
  }

  bool _isTimePassed(String timeSlot) {
    DateTime now = DateTime.now();
    DateTime parsedTime = DateFormat('hh:mm a').parse(timeSlot.split(' - ')[0]);
    parsedTime = DateTime(_selectedDate.year, _selectedDate.month, _selectedDate.day, parsedTime.hour, parsedTime.minute);
    return now.isAfter(parsedTime);
  }
}
