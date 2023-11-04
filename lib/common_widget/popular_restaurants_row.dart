import 'package:flutter/material.dart';
import 'package:meal_monkey/common/color_extension.dart';

class PopularRestaurantsRow extends StatelessWidget {
  final Map pObj;
  final VoidCallback onTap;
  const PopularRestaurantsRow(
      {super.key, required this.pObj, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              pObj['image'].toString(),
              width: double.maxFinite,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 8,
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pObj['name'],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
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
                        pObj['rate'],
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
                        '(${pObj['rating']} Ratings)',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 11,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        pObj['type'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: TColor.secondaryText,
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
                        pObj['food_type'],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
