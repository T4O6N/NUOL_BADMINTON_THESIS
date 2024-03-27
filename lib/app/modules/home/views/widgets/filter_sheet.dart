import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/modules/home/views/widgets/button_submit_filter.dart';
import 'package:nuol_badminton_thesis/app/modules/home/views/widgets/drop_down_widget_filter.dart';
import 'package:nuol_badminton_thesis/app/widgets/button_time.dart';

class FilterSheet extends StatelessWidget {
  const FilterSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
            ),
            const SizedBox(height: 20),
            //text
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "ໝວດໝູ່ປະເພດເດີ່ນ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: "NotoSansLao",
                    ),
                  ),
                  const SizedBox(height: 20),
                  //iconSvg Sport
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(
                        AppImagesSvg.tennis,
                        height: 50,
                      ),
                      SvgPicture.asset(
                        AppImagesSvg.ball,
                        height: 50,
                      ),
                      SvgPicture.asset(
                        AppImagesSvg.badminton,
                        height: 50,
                      ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Tennis',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Football',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Badminton',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Divider(
                    height: 1.5,
                    color: Colors.black,
                  ),
                  const ExpansionTile(
                    title: Text(
                      "ສະຖານທີ່",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontFamily: "NotoSansLao",
                        color: Colors.black,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_drop_down_outlined,
                      color: Colors.green,
                      size: 40,
                    ),
                    children: [
                      SizedBox(height: 12),
                      //dropdown
                      DropdownWidgetFilter(
                        hintText: "ແຂວງ",
                      ),
                      SizedBox(height: 10),
                      DropdownWidgetFilter(
                        hintText: "ເມືອງ",
                      ),
                      SizedBox(height: 10),
                    ],
                  ),

                  const Divider(
                    height: 1.5,
                    color: Colors.black,
                  ),
                  const Text(
                    "ຕາຕະລາງເວລາ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: "NotoSansLao",
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "ວັນທີ",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      fontFamily: "NotoSansLao",
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "1       2       3       4       5       6       7",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: "NotoSansLao",
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2002),
                            lastDate: DateTime(3000),
                          );
                        },
                        child: const Icon(
                          Icons.calendar_month,
                          color: Colors.green,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Divider(
                    height: 1.5,
                    color: Colors.black,
                  ),
                  const Text(
                    "ເວລາ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: "NotoSansLao",
                    ),
                  ),
                  const SizedBox(height: 12),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ButtonTime(
                          color: const Color(0xFFD9D9D9),
                          durationLabel: '16:00-15:00',
                        ),
                        ButtonTime(
                          color: const Color(0xFFD9D9D9),
                          durationLabel: '16:00-15:00',
                        ),
                        ButtonTime(
                          color: const Color(0xFFD9D9D9),
                          durationLabel: '16:00-15:00',
                        ),
                        ButtonTime(
                          color: const Color(0xFFD9D9D9),
                          durationLabel: '16:00-15:00',
                        ),
                        ButtonTime(
                          color: const Color(0xFFD9D9D9),
                          durationLabel: '16:00-15:00',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Divider(
                    height: 1.5,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 32),
                  const ButtonSubmitFilter(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
