import 'package:flutter/material.dart';
import 'package:flutter_con_timer/timer.dart';
import 'package:gap/gap.dart';

const textStyle = TextStyle(color: Colors.white, fontSize: 48);

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: EdgeInsets.all(48.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Wait for the next session in", style: textStyle),
              Gap(48),
              Timer(),
              Gap(100),
              Text("... or come and animate this timer",
                  style: TextStyle(color: Colors.white, fontSize: 32)),
            ],
          ),
        ),
      ),
    );
  }
}
