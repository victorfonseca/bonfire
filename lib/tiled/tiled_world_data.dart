import 'package:bonfire/bonfire.dart';
import 'package:bonfire/map/map_world.dart';

class TiledWorldData {
  final MapWorld map;
  final List<GameComponent> components;

  TiledWorldData({this.map, this.components});
}
