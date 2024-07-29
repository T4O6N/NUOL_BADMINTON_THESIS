// ignore_for_file: library_private_types_in_public_api, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/modules/admin_dashboard/controllers/admin_dashboard_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/admin_dashboard/views/admin_get_dialy_booking.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/views/badminton_court_view.dart';

import 'package:nuol_badminton_thesis/app/modules/scan_qr/views/scan_qr_view.dart';

class AdminDashboardView extends StatefulWidget {
  const AdminDashboardView({Key? key}) : super(key: key);

  @override
  _AdminDashboardViewState createState() => _AdminDashboardViewState();
}

class _AdminDashboardViewState extends State<AdminDashboardView> {
  int _currentIndex = 0;
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

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  Widget _bottomAppBarItem(BuildContext context, {required String icon, required int page, required String label}) {
    return InkWell(
      onTap: () => _onTabTapped(page),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            icon,
            color: _currentIndex == page ? const Color(0xFF00A950) : const Color(0xFF00A950).withOpacity(0.5),
          ),
          Text(
            label,
            style: TextStyle(
              color: _currentIndex == page ? Colors.green : Colors.grey,
              fontWeight: _currentIndex == page ? FontWeight.bold : null,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          ScanQrView(),
          const BadmintonCourtView(),
          BookingDailyHistoryView(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        elevation: 0,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _bottomAppBarItem(
                context,
                icon: AppImagesSvg.cameraIcon,
                page: 0,
                label: "ສະແກນຄິວອາ",
              ),
              _bottomAppBarItem(
                context,
                icon: AppImagesSvg.bookingIcon,
                page: 1,
                label: "ຈັດການ",
              ),
              _bottomAppBarItem(
                context,
                icon: AppImagesSvg.historyIcon,
                page: 2,
                label: "ການຈອງລາຍວັນ",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
