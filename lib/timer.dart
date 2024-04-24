import 'package:date_count_down/date_count_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_con_timer/extensions.dart';
import 'package:flutter_con_timer/screen.dart';

class Timer extends StatelessWidget {
  const Timer({super.key});

  @override
  Widget build(BuildContext context) {
    const sessions = [
      TimeOfDay(hour: 11, minute: 0),
      TimeOfDay(hour: 13, minute: 30),
      TimeOfDay(hour: 16, minute: 0),
    ];
    final nextSession = sessions.firstWhere((session) => session.isAfterNow());
    final nextSessionDateTime = DateTime.now().copyWith(
      hour: nextSession.hour,
      minute: nextSession.minute,
      second: 0,
      millisecond: 0,
      microsecond: 0,
    );

    return CountDownText(
      due: nextSessionDateTime,
      finishedText: "0",
      style: textStyle,
    )
        .animate(
          onComplete: (controller) => controller.loop(),
        )
        .shimmer(
          color: Colors.grey,
          duration: const Duration(seconds: 2),
        );
  }
}
