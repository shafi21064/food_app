import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F5F2),
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Color(0xff7E7E7E),
        ),
        title: const Text(
          'Food App',
          style: TextStyle(color: Color(0xff7E7E7E)),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xffF8F5F2),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_alert_rounded,
                color: Color(0xff7E7E7E),
              ))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 36,
              width: 238,
              decoration: BoxDecoration(
                color: const Color(0xffE84C4F).withOpacity(.2),
                borderRadius: BorderRadius.circular(36),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Location',
                      style: TextStyle(fontSize: 16, color: Color(0xff7E7E7E)),
                    ),
                    Icon(
                      Icons.arrow_drop_down_circle_outlined,
                      color: Color(0xff7E7E7E),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                height: 66,
                width: 183,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, Yahya',
                      style: TextStyle(fontSize: 28, color: Color(0xff3E4462)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'What do you want to eat?',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff7E7E7E)
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
