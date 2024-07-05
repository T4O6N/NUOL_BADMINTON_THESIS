import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/modules/booking/views/booking_view.dart';
import 'package:nuol_badminton_thesis/app/modules/history/views/history_view.dart';
import 'package:nuol_badminton_thesis/app/modules/home/views/home_view.dart';

class DashboardView extends StatefulWidget {
  DashboardView({Key? key}) : super(key: key);

  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 0,
          elevation: 0,
        ),
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            HomeView(),
            const BookingView(),
            const HistoryView(),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                spreadRadius: 1,
                color: Colors.black12,
              ),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: BottomNavigationBar(
              unselectedItemColor: Colors.grey,
              backgroundColor: Colors.white,
              fixedColor: Colors.green,
              iconSize: 25,
              selectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              showUnselectedLabels: true,
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppImagesSvg.homeIcon,
                    height: size.height * 0.03,
                    color: _selectedIndex == 0 ? Colors.green : Colors.grey,
                  ),
                  label: "ໜ້າຫຼັກ",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppImagesSvg.bookingIcon,
                    height: size.height * 0.03,
                    color: _selectedIndex == 1 ? Colors.green : Colors.grey,
                  ),
                  label: "ປະຫວັດການຈອງ",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppImagesSvg.historyIcon,
                    height: size.height * 0.03,
                    color: _selectedIndex == 2 ? Colors.green : Colors.grey,
                  ),
                  label: "ປະຫວັດການຊຳລະ",
                ),
              ],
              onTap: _onItemTapped,
              currentIndex: _selectedIndex,
            ),
          ),
        ),
      ),
    );
  }
}
