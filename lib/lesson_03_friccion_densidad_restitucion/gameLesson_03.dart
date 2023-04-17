import 'package:super_jumper/lesson_03_friccion_densidad_restitucion/objects/box.dart';
import 'package:super_jumper/lesson_03_friccion_densidad_restitucion/objects/floor.dart';
import 'package:super_jumper/myGame.dart';

class GameLesson03 extends MyGame{

  @override
  Future<void> onLoad()async {
    super.onLoad();
    add(Floor());
    add(Box());
  }
}