import 'package:baqaya_alkhayr/constants/my_color.dart';
import 'package:flutter/material.dart';

import '../../models/machine.dart';
import '../screens/machine_details.dart';

class LocationCard extends StatelessWidget {
  final Machine machine;

  const LocationCard({super.key, required this.machine});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => MachineDetails(machine: machine),
              ),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${machine.location}      ${machine.destination} كم',
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              CircleAvatar(
                backgroundColor:
                    machine.isAvailable ? Colors.greenAccent : Colors.redAccent,
                radius: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
