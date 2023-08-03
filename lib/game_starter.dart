import 'package:bonfire/bonfire.dart';
import 'package:daedalus/const/const.dart';
import 'package:daedalus/entities/alive/player/player.dart';
import 'package:flutter/material.dart';

late Function(String s) selectMap;

class Starter extends StatefulWidget {
  const Starter({Key? key}) : super(key: key);

  @override
  State<Starter> createState() => _Starter();
}

class _Starter extends State<Starter> {
  @override
  void initState() {
    selectMap = (String s) {
      setState(() {
        actualMap = s;
      });
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
        duration: const Duration(seconds: 1),
        switchInCurve: Curves.easeOutCubic,
        transitionBuilder: (Widget child, Animation<double> animation) =>
            FadeTransition(opacity: animation, child: child),
        child: BonfireWidget(
          key: ValueKey(actualMap),
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
          player: GamePlayer(playerStartPosition),
          map: WorldMapByTiled(
            'maps/$actualMap',
            forceTileSize: Vector2(16, 16),
          ),
          cameraConfig: CameraConfig(moveOnlyMapArea: true, zoom: 3),
          backgroundColor: const Color.fromARGB(255, 10, 53, 89),
        )
        );
  }
}


// class BuildGame extends StatelessWidget{
//   final String? mapString;

//   const BuildGame({
//     Key? key,
//     required this.mapString,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     print("BuildGame:   Building a stateless with mapString: $mapString");
      
//       return 
//   }
// }