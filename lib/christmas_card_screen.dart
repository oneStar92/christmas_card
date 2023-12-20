import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ChristmasCardScreen extends StatefulWidget {
  const ChristmasCardScreen({super.key});

  @override
  State<ChristmasCardScreen> createState() => _ChristmasCardScreenState();
}

class _ChristmasCardScreenState extends State<ChristmasCardScreen> with TickerProviderStateMixin {
  late final AnimationController _lottieController;

  @override
  void initState() {
    _lottieController = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _lottieController.dispose();
    super.dispose();
  }

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Merry',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, color: Colors.white,),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Christmas',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, color: Colors.white,),
              ),
              const SizedBox(
                height: 8,
              ),
              const Row(
                children: [
                  Expanded(
                      child: Text(
                    'from. OneStar',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 24),
                  )),
                  SizedBox(
                    width: 16,
                  ),
                ],
              ),
              Lottie.network(
                'https://lottie.host/e4a27dd0-9499-4c28-9af2-8892cac64735/i2NXr2NE0e.json',
                controller: _lottieController,
                onLoaded: (composition) {
                  _lottieController.duration = composition.duration;
                  _lottieController.repeat();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
