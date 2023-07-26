import 'package:bonfire/bonfire.dart';
import 'package:flutter/widgets.dart';

class ExitMapSensor extends GameDecoration with Sensor {
  final String id;
  final ValueChanged<String> exitMap;

  ExitMapSensor(this.id, Vector2 position, Vector2 size, this.exitMap)
      : super(
          position: position,
          size: size,
        );

  @override
  void onContact(GameComponent component) {
    if (component is Player) {
      exitMap(id);
    }
  }
}