import 'package:bonfire/bonfire.dart';
import 'package:daedalus/const/const.dart';

class DaedalusWorldMapper{
  static String changeMap(Vector2 playerPosition){
    Vector2 playerActualMap = getMapcordinadeFromString(actualMap)!;
    Vector2 newMap = playerActualMap;
    
    // print("started changeMap: map $newMap");
    // move to left
    if(playerPosition.x < 1) newMap.y--;  

    // right
    if(playerPosition.x > 800) newMap.y++;  
  
    // up
    if(playerPosition.y < 1) newMap.x--;  

    // down
    if(playerPosition.y > 800) newMap.x++;   

    if(newMap.x < 0) newMap.x = 0;
    if(newMap.y < 0) newMap.y = 0;
    if(newMap.x > 2) newMap.x = 2;
    if(newMap.y > 2) newMap.y = 2;
    // print("final map will be $newMap");

    return 'map_${newMap.x.round()}_${newMap.y.round()}.json';
  }

  static Vector2? getNewPosition(Vector2 playerPosition){
    // move to left
    if(playerPosition.x < 1) return Vector2(790, playerPosition.y);
    
    // right
    if(playerPosition.x > 799) return Vector2(1, playerPosition.y);
    
    // up
    if(playerPosition.y < 1) return Vector2(playerPosition.x, 790);
    
    // down
    if(playerPosition.y > 799) return Vector2(playerPosition.x, 1);  

    return null;
  }
  
  static Vector2? getMapcordinadeFromString(String s){
    Match match = RegExp(r'map_(\d+)_(\d+)\.json').firstMatch(s) as Match;
    
    double x = double.parse(match.group(1)!);
    double y = double.parse(match.group(2)!);

    return Vector2(x, y);
  }
}