import 'package:baqaya_alkhayr/layouts/widgets/search.dart';
import 'package:flutter/material.dart';

import '../../data.dart';
import '../widgets/location_card.dart';

class Locations extends StatelessWidget {
  const Locations({super.key});

  @override
  Widget build(BuildContext context) {
    machines.sort((a, b) => a.destination.compareTo(b.destination));
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Search(),
          Expanded(
            child: ListView.builder(
              itemCount: machines.length,
              itemBuilder: (context, index) => LocationCard(
                machine: machines[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}
