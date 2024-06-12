import 'package:get/get.dart';

import '../modules/OwnerDashboard/bindings/owner_dashboard_binding.dart';
import '../modules/OwnerDashboard/views/owner_dashboard_view.dart';
import '../modules/admin_booking/bindings/admin_booking_binding.dart';
import '../modules/admin_booking/views/admin_booking_view.dart';
import '../modules/admin_dashboard/bindings/admin_dashboard_binding.dart';
import '../modules/admin_dashboard/views/admin_dashboard_view.dart';
import '../modules/admin_user_profile/bindings/admin_user_profile_binding.dart';
import '../modules/admin_user_profile/views/admin_user_profile_view.dart';
import '../modules/booking/bindings/booking_binding.dart';
import '../modules/booking/views/booking_view.dart';
import '../modules/choose_schedule/bindings/choose_schedule_binding.dart';
import '../modules/choose_schedule/views/choose_schedule_view.dart';
import '../modules/create_admin_for_owner/bindings/create_admin_for_owner_binding.dart';
import '../modules/create_admin_for_owner/views/create_admin_for_owner_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/history/bindings/history_binding.dart';
import '../modules/history/views/history_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/login_with_phone/bindings/login_with_phone_binding.dart';
import '../modules/login_with_phone/views/login_with_phone_view.dart';
import '../modules/owner/bindings/owner_binding.dart';
import '../modules/owner/views/owner_view.dart';
import '../modules/payment_detail/bindings/payment_detail_binding.dart';
import '../modules/payment_detail/views/payment_detail_view.dart';
import '../modules/scan_qr/bindings/scan_qr_binding.dart';
import '../modules/scan_qr/views/scan_qr_view.dart';
import '../modules/setting/bindings/setting_binding.dart';
import '../modules/setting/views/setting_view.dart';
import '../modules/shop_detail/bindings/shop_detail_binding.dart';
import '../modules/shop_detail/views/shop_detail_view.dart';
import '../modules/shop_profile/bindings/shop_profile_binding.dart';
import '../modules/shop_profile/views/shop_profile_view.dart';
import '../modules/user_profile/bindings/user_profile_binding.dart';
import '../modules/user_profile/views/user_profile_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.DASHBOARD;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_WITH_PHONE,
      page: () => const LoginWithPhoneView(),
      binding: LoginWithPhoneBinding(),
    ),
    GetPage(
      name: _Paths.SHOP_DETAIL,
      page: () => const ShopDetailView(),
      binding: ShopDetailBinding(),
    ),
    GetPage(
      name: _Paths.SHOP_PROFILE,
      page: () => const ShopProfileView(),
      binding: ShopProfileBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.BOOKING,
      page: () => const BookingView(),
      binding: BookingBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => const HistoryView(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: _Paths.USER_PROFILE,
      page: () => const UserProfileView(),
      binding: UserProfileBinding(),
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => const SettingView(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: _Paths.CHOOSE_SCHEDULE,
      page: () => const ChooseScheduleView(),
      binding: ChooseScheduleBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT_DETAIL,
      page: () => const PaymentDetailView(),
      binding: PaymentDetailBinding(),
    ),
    GetPage(
      name: _Paths.SCAN_QR,
      page: () => ScanQrView(),
      binding: ScanQrBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN_USER_PROFILE,
      page: () => const AdminUserProfileView(),
      binding: AdminUserProfileBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN_BOOKING,
      page: () => const AdminBookingView(),
      binding: AdminBookingBinding(),
    ),
    GetPage(
      name: _Paths.ADMIN_DASHBOARD,
      page: () => const AdminDashboardView(),
      binding: AdminDashboardBinding(),
    ),
    GetPage(
      name: _Paths.OWNER,
      page: () => const OwnerView(),
      binding: OwnerBinding(),
    ),
    GetPage(
      name: _Paths.OWNER_DASHBOARD,
      page: () => const OwnerDashboardView(),
      binding: OwnerDashboardBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_ADMIN_FOR_OWNER,
      page: () => const CreateAdminForOwnerView(),
      binding: CreateAdminForOwnerBinding(),
    ),
  ];
}
