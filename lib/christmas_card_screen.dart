import 'package:flutter/material.dart';

class ChristmasCardScreen extends StatelessWidget {
  const ChristmasCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1576919228236-a097c32a5cd4?q=80&w=3000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            ),
          ),
          child: const Column(
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
      ),
    );
  }
}
