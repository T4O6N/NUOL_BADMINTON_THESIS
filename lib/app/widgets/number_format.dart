import 'package:get/get.dart';
import 'package:intl/intl.dart';

class NumberFormatter {
  static final NumberFormat formatter = NumberFormat('#,###,###');
  static final NumberFormat numShortForm = NumberFormat.compact(locale: "en_US");
  static String formatPriceCurrency(int price) {
    if (price.toString().length > 3) {
      final formatPrice = formatter.format(price);
      return "₭ $formatPrice";
    } else {
      return "₭ $price";
    }
  }

  static String formatPriceKip(int price) {
    if (price.toString().length > 3) {
      final formatPrice = formatter.format(price);
      return "$formatPrice ${"kip".tr}";
    } else {
      return "$price ${"kip".tr}";
    }
  }

  static String formatPriceWithoutKip(int price) {
    if (price.toString().length > 3) {
      final formatPrice = formatter.format(price);
      return formatPrice;
    } else {
      return "$price";
    }
  }

  static String formatPoint(int point) {
    if (point.toString().length > 3) {
      final formatPrice = formatter.format(point);
      return formatPrice;
    } else {
      return "$point";
    }
  }
}
