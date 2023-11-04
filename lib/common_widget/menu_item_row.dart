import 'package:flutter/material.dart';
import 'package:meal_monkey/common/color_extension.dart';

class MenuItemRow extends StatelessWidget {
  final Map menuObj;
  final VoidCallback onTap;
  const MenuItemRow({super.key, required this.menuObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Image.asset(
              menuObj['image'].toString(),
              width: double.maxFinite,
              height: 200,
              fit: BoxFit.cover,
            ),
            Container(
              width: double.maxFinite,
              height: 200,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.black,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        menuObj['name'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: TColor.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/rate.png',
                            width: 10,
                            height: 10,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            menuObj['rate'],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: TColor.primary,
                              fontSize: 11,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            menuObj['type'],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: TColor.white,
                              fontSize: 11,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: TColor.primary,
                              fontSize: 11,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            menuObj['food_type'],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: TColor.white,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 22,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
