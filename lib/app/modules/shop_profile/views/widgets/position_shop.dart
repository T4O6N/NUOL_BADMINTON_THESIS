import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:nuol_badminton_thesis/app/constants/app_image.dart';

class PositionShop extends StatelessWidget {
  const PositionShop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    GoogleMapController mapController;
    void onMapCreated(GoogleMapController controller) {
      mapController = controller;
    }

    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    AppImagesSvg.positionIcon,
                    height: 20,
                    width: 20,
                  )),
              const SizedBox(width: 5),
              const Text(
                "ຕຳແໜ່ງຂອງເດີ່ນເຕະບານຮ່ອງຄ້າ",
                style: TextStyle(),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                // color: Colors.amberAccent,
              ),
              height: 245,
              width: double.infinity,
              child: GoogleMap(mapType: MapType.terrain, myLocationEnabled: true, onMapCreated: onMapCreated, initialCameraPosition: const CameraPosition(target: LatLng(13.7650836, 100.5379664), zoom: 15)),
            ),
          ),
        ],
      ),
    );
  }
}
