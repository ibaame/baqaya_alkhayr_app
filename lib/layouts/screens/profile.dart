import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('profile'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.create)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  color: Colors.grey,
                  height: 100,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/trees.png',
                    fit: BoxFit.fill,
                  ),
                ),
                const Positioned(
                  right: 10,
                  bottom: -20,
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    radius: 25,
                    child: Icon(Icons.person),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              children: [
                const Divider(thickness: 3),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(),
                  child: const Text('Bassam Mohammed'),
                ),
                const Divider(thickness: 3),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(),
                  child: const Text('05555555555'),
                ),
                const Divider(thickness: 3),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(),
                  child: const Text('example@google.com'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
