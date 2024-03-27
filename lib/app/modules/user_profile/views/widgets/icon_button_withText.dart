import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconButtonWithText extends StatelessWidget {
  const IconButtonWithText({
    super.key,
    required this.label,
    required this.icon,
    required this.onTap,
  });
  final String label;
  final SvgPicture icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          InkWell(onTap: onTap, child: icon),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: onTap,
            child: Text(
              label,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'NotoSansLao'),
            ),
          ),
        ],
      ),
    );
  }
}
