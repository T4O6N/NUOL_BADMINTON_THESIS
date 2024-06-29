import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/controllers/choose_schedule_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/views/widget/detail_booking_view.dart';
import 'package:nuol_badminton_thesis/app/modules/home/model/court.dart';
import 'package:nuol_badminton_thesis/app/widgets/booking_botton.dart';
import 'package:nuol_badminton_thesis/app/widgets/number_format.dart';
import 'package:nuol_badminton_thesis/app/widgets/warning_dialog.dart';

class ChooseScheduleStfView extends StatefulWidget {
  final Court court;
  const ChooseScheduleStfView({super.key, required this.court});

  @override
  State<ChooseScheduleStfView> createState() => _ChooseScheduleStfViewState();
}

class _ChooseScheduleStfViewState extends State<ChooseScheduleStfView> {
  final List<String> timeSlots = [
    '9:00 AM - 10:00 AM',
    '10:00 AM- 11:00 AM',
    '11:00 AM- 12:00 PM',
    '12:00 PM- 1:00 PM',
    '1:00 PM - 2:00 PM',
    '2:00 PM - 3:00 PM',
    '3:00 PM - 4:00 PM',
    '4:00 PM - 5:00 PM',
    '5:00 PM - 6:00 PM',
    '6:00 PM - 7:00 PM',
    '7:00 PM - 8:00 PM',
    '8:00 PM - 9:00 PM',
    '9:00 PM - 10:00 PM',
    '10:00 PM - 11:00 PM',
  ];

  Map<DateTime, Map<String, bool>> bookingDetails = {};
  DateTime _selectedDate = DateTime.now();
  int totalPrice = 0;
  final int pricePerSlot = 80000;

  void _calculateTotalPrice() {
    totalPrice = 0;
    bookingDetails.forEach((date, slots) {
      slots.forEach((timeSlot, isSelected) {
        if (isSelected) {
          totalPrice += pricePerSlot;
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    // Initialize bookingDetails for the current date
    bookingDetails[_selectedDate] = {};
    for (var timeSlot in timeSlots) {
      bookingDetails[_selectedDate]![timeSlot] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ChooseScheduleController controller = Get.put(ChooseScheduleController());
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
                            offset: const Offset(0, 3), // changes position of shadow
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
                      height: size.height * 0.4, // Set a specific height or use a flexible widget
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
                          // Expanded(
                          //   child: ListView.builder(
                          //     itemCount: timeSlots.length,
                          //     itemBuilder: (BuildContext context, int index) {
                          //       final timeSlot = timeSlots[index];
                          //       final isSelected = bookingDetails[_selectedDate]?[timeSlot] ?? false;
                          //       final isTimePassed = _isTimePassed(timeSlot);
                          //       return Container(
                          //         margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                          //         height: size.height * 0.05,
                          //         width: double.infinity,
                          //         decoration: BoxDecoration(
                          //           borderRadius: BorderRadius.circular(8),
                          //           border: Border.all(
                          //             color: Colors.grey,
                          //             width: 0.4,
                          //           ),
                          //         ),
                          //         child: Padding(
                          //           padding: const EdgeInsets.symmetric(horizontal: 10),
                          //           child: Row(
                          //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //             children: [
                          //               Text(
                          //                 timeSlot,
                          //                 style: const TextStyle(fontWeight: FontWeight.bold),
                          //               ),
                          //               Row(
                          //                 children: [
                          //                   Text(
                          //                     NumberFormatter.formatPriceKip(widget.court.price),
                          //                     style: const TextStyle(fontWeight: FontWeight.bold),
                          //                   ),
                          //                   Obx(
                          //                     () => Checkbox(
                          //                       checkColor: Colors.white,
                          //                       focusColor: Colors.green,
                          //                       activeColor: Colors.green,
                          //                       value: true,
                          // onChanged: (bool? value) {
                          //   controller.toggleSelection(index);
                          //   List<String> selectedTimes = controller.getSelectedTimes();
                          //   List<int> selectedPrices = controller.getSelectedPrices();

                          //   print('Selected times: ${selectedTimes.join(', ')}');
                          //   print('Selected prices: ${selectedPrices.join(', ')} ₭');
                          // },
                          //                       onChanged: isTimePassed
                          //                           ? null
                          //                           : (bool? value) {
                          //                               setState(() {
                          //                                 bookingDetails[_selectedDate]![timeSlot] = value!;
                          //                               });
                          //                             },
                          //                     ),
                          //                   ),
                          //                 ],
                          //               ),
                          //             ],
                          //           ),
                          //         ),
                          //       );
                          //     },
                          //   ),
                          // ),
                          // Expanded(
                          //   child: ListView.builder(
                          //     itemCount: timeSlots.length,
                          //     itemBuilder: (context, index) {
                          //       final timeSlot = timeSlots[index];
                          //       final isSelected = bookingDetails[_selectedDate]?[timeSlot] ?? false;
                          //       final isTimePassed = _isTimePassed(timeSlot);
                          //       return CheckboxListTile(
                          //         title: Text(timeSlot),
                          //         value: isSelected,
                          //         onChanged: isTimePassed
                          //             ? null
                          //             : (bool? value) {
                          //                 setState(() {
                          //                   bookingDetails[_selectedDate]![timeSlot] = value!;
                          //                   controller.toggleSelection(index);
                          //                   List<String> selectedTimes = controller.getSelectedTimes();
                          //                   List<int> selectedPrices = controller.getSelectedPrices();

                          //                   print('Selected times: ${selectedTimes.join(', ')}');
                          //                   print('Selected prices: ${selectedPrices.join(', ')} ₭');
                          //                 });
                          //               },
                          //       );
                          //     },
                          //   ),
                          // ),
                          Expanded(
                            child: ListView.builder(
                              itemCount: timeSlots.length,
                              itemBuilder: (context, index) {
                                final timeSlot = timeSlots[index];
                                final isSelected = bookingDetails[_selectedDate]?[timeSlot] ?? false;
                                final isTimePassed = _isTimePassed(timeSlot);
                                final isCurrentDate = _selectedDate.isAtSameMomentAs(DateTime.now());

                                // Enable or disable onChanged based on whether it's the current date
                                final canChangeTimeSlot = isCurrentDate || !isTimePassed;

                                return CheckboxListTile(
                                  //  focusColor: Colors.green,
                                  activeColor: Colors.green,
                                  title: Text(timeSlot),
                                  value: isSelected,
                                  onChanged: canChangeTimeSlot
                                      ? (bool? value) {
                                          setState(() {
                                            bookingDetails[_selectedDate]![timeSlot] = value!;
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
                        // NumberFormatter.formatPriceKip(totalPrice),
                        NumberFormatter.formatPriceKip(totalPrice),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    BookingButton(
                      // onTap: () {
                      //   final Map<DateTime, List<String>> selectedBookingDetails = {};

                      //   bookingDetails.forEach(
                      //     (date, slots) {
                      //       final selectedSlots = slots.entries.where((entry) => entry.value).map((entry) => entry.key).toList();
                      //       if (selectedSlots.isNotEmpty) {
                      //         selectedBookingDetails[date] = selectedSlots;
                      //       }
                      //     },
                      //   );
                      //   int totalPrice = controller.getTotalPrice();
                      //   if (totalPrice == 0) {
                      //     warningDialog(des: "ກະລຸນາເລືອກເວລາການຈອງເດີ່ນ", context: context, btnOkOnPress: () {});
                      //   } else {
                      //     Get.to(
                      //         DetailBookingView(
                      //           court: widget.court,
                      //           bookingDetails: selectedBookingDetails,
                      //         ),
                      //         arguments: totalPrice);
                      //   }
                      // },
                      onTap: () {
                        final Map<DateTime, List<String>> selectedBookingDetails = {};

                        bookingDetails.forEach(
                          (date, slots) {
                            final selectedSlots = slots.entries.where((entry) => entry.value).map((entry) => entry.key).toList();
                            if (selectedSlots.isNotEmpty) {
                              selectedBookingDetails[date] = selectedSlots;
                            }
                          },
                        );

                        if (selectedBookingDetails.isEmpty) {
                          Get.snackbar('Error', 'Please select at least one time slot', backgroundColor: Colors.red, colorText: Colors.white);
                          return;
                        }
                        Get.to(
                          DetailBookingView(
                            court: widget.court,
                            bookingDetails: selectedBookingDetails,
                            totalPrice: totalPrice, // Pass the total price
                          ),
                        );
                      },
                    ),
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

  bool _isTimePassed(String timeSlot) {
    DateTime now = DateTime.now();
    DateTime parsedTime = DateFormat('hh:mm a').parse(timeSlot.split(' - ')[0]);

    // Adjust the parsedTime to compare against _selectedDate's date
    parsedTime = DateTime(_selectedDate.year, _selectedDate.month, _selectedDate.day, parsedTime.hour, parsedTime.minute);

    // Check if parsedTime is in the past relative to now
    return now.isAfter(parsedTime);
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
          if (!bookingDetails.containsKey(date)) {
            bookingDetails[date] = {};
            for (var timeSlot in timeSlots) {
              bookingDetails[date]![timeSlot] = false;
            }
          }
        });
      },
    );
  }
}
