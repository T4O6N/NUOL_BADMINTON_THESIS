import 'package:flutter/material.dart';

class CircleProfile extends StatelessWidget {
  const CircleProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double profileHeight = MediaQuery.of(context).size.width * 0.45;

    return Column(
      children: [
        CircleAvatar(
          radius: profileHeight / 1.9,
          backgroundColor: const Color.fromARGB(255, 207, 207, 207),
          child: CircleAvatar(
            radius: profileHeight / 2,
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            backgroundImage: const AssetImage("assets/images/kuh-01.png"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Column(
            children: const [
              Text(
                "Name",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Roboto'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
