import 'package:flutter/material.dart';

class CardPoint extends StatelessWidget {
  const CardPoint({
    super.key,
    required this.descrition,
    required this.imageAsset,
  });
  final String descrition;
  final String imageAsset;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      offset: const Offset(-1, 5),
                      spreadRadius: .1,
                      blurRadius: 3,
                    )
                  ]),
              child: Card(
                child: SizedBox(
                  width: double.infinity,
                  height: size.height * .18,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 0, left: 20),
                        child: SizedBox(
                          width: size.width * 0.44,
                          child: Text(
                            descrition,
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'NotoSansLao'),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width * 0.35,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              imageAsset,
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
