import 'package:baqaya_alkhayr/data.dart';
import 'package:baqaya_alkhayr/layouts/widgets/carousel.dart';
import 'package:baqaya_alkhayr/layouts/widgets/location_card.dart';
import 'package:baqaya_alkhayr/layouts/widgets/search.dart';
import 'package:flutter/material.dart';

import '../../constants/my_color.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Search(),
            const Carousel(),
            const Align(
              alignment: Alignment.topRight,
              child: Text(
                'أقرب آلة',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 5),
            LocationCard(machine: machines[1]),
            const Align(
              alignment: Alignment.topRight,
              child: Text(
                'آخر آلة استخدمت',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 5),
            LocationCard(machine: machines[3]),
            const SizedBox(height: 15),
            Container(
              width: MediaQuery.of(context).size.width / 1,
              height: 50,
              decoration: BoxDecoration(
                color: MyColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'assets/images/recycle.png',
                    width: 30,
                  ),
                  const Text(
                    'تم تحويل',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    '14 كج',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
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
