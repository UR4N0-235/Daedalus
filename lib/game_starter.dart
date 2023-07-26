import 'package:bonfire/bonfire.dart';
import 'package:daedalus/entities/alive/player/player.dart';
import 'package:flutter/material.dart';


class Starter extends StatefulWidget{
  const Starter({Key? key}) : super(key: key);

  @override
  State<Starter> createState() => _Starter();
}

class _Starter extends State<Starter> {

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BonfireWidget(
      progress: Container(
        color: Colors.black,
        child: const Center(
          child: Text(
            'Loading...',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      joystick: Joystick(
        directional: JoystickDirectional(),
      ),
      player: GamePlayer(Vector2(25 * 16, 29 * 16)),
      map: WorldMapByTiled('maps/castle_and_village_map.json',
          forceTileSize: Vector2(16, 16),
      ),
      cameraConfig: CameraConfig(moveOnlyMapArea: true, zoom: 3),
      backgroundColor: const Color.fromARGB(255, 10, 53, 89),
    );
  }
}