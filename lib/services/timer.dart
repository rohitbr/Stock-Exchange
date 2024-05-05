import 'dart:async';

import 'package:flutter/material.dart';

class TimerController {
  TimerController({
    required this.duration,
    required this.onTimerStarted,
    required this.onTimerPaused,
  });

  Timer? timer;

  final Duration duration;

  final VoidCallback? onTimerStarted;

  final VoidCallback? onTimerPaused;

  void startTimer() {
    timer = Timer.periodic(duration, (timer) {
      print('Timer started Rohit here ${timer.tick}');
      onTimerStarted?.call();
    });
  }

  void pauseTimer() {
    timer?.cancel();
    print('Rohit here Timer paused');
    onTimerPaused?.call();
  }
}
