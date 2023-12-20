import 'package:flutter/material.dart';

class ChristmasCardScreen extends StatelessWidget {
  const ChristmasCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Happy',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Christmas',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                  'from. IL Seong',
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 24),
                )),
                SizedBox(
                  width: 16,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
