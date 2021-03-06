import 'package:flutter/cupertino.dart';

class IntervalTick {
  final int interval; // in Milliseconds
  final VoidCallback tick;
  double _timeMax = 1000.0;
  double _currentTime = 0;
  IntervalTick(this.interval, {this.tick});

  bool update(double dt) {
    _currentTime += dt * _timeMax;
    if (_currentTime >= interval) {
      if (tick != null) tick();
      _currentTime = 0;
      return true;
    }
    return false;
  }
}
