

import 'package:super_jumper/lesson_01/objects/ball.dart';
import 'package:super_jumper/myGame.dart';

class GameLesson01 extends MyGame{

  @override
  Future<void> onLoad()
async {
  super.onLoad();
  add(Ball());
}
}