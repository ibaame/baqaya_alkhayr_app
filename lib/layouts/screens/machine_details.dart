import 'package:baqaya_alkhayr/constants/my_color.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

import '../../models/machine.dart';

class MachineDetails extends StatelessWidget {
  final Machine machine;

  const MachineDetails({super.key, required this.machine});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.secondaryColor,
        title: Text('الآلة رقم  ${machine.id}'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      machine.location,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '${machine.destination} كم',
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(
                      'assets/images/map.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(40, 0, 0, 0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Positioned(
                      left: 100,
                      top: 50,
                      child: IconButton(
                        onPressed: () {},
                        icon: InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            child: Image.asset('assets/images/send.png'),
                          ),
                        ),
                      ))
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    machine.isAvailable ? 'الآلة تعمل' : 'الآلة متوقفة',
                    style: const TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                  CircleAvatar(
                    backgroundColor: machine.isAvailable
                        ? Colors.greenAccent
                        : Colors.redAccent,
                    radius: 10,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.2,
                    height: 50,
                    decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/images/fertilizer.png',
                          width: 30,
                        ),
                        Text(
                          '${machine.samad} كج',
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.2,
                    height: 50,
                    decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/images/feed.png',
                          width: 30,
                        ),
                        Text(
                          '${machine.samad} كج',
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              PieChart(
                dataMap: {
                  'ممتلئة: ': machine.isAvailable ? machine.capacity : 0,
                  'المساحة المتبقية':
                      machine.isAvailable ? (100 - machine.capacity) : 0,
                },
                colorList: const [MyColors.theme, MyColors.secondaryColor],
                chartRadius: MediaQuery.of(context).size.width / 2,
                centerText: machine.isAvailable ? 'السعة' : 'لا توجد معلومات',
                chartValuesOptions: const ChartValuesOptions(
                    showChartValuesInPercentage: true, showChartValues: true),
                legendOptions: const LegendOptions(
                  legendPosition: LegendPosition.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
