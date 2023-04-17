
import 'dart:math';

import 'package:flame/input.dart';
import 'package:super_jumper/myGame.dart';
import 'package:super_jumper/lesson_05_sprites/objects/floor.dart';
import 'package:super_jumper/lesson_05_sprites/objects/ball.dart';
import 'package:super_jumper/lesson_05_sprites/objects/box.dart';


class GameLesson05 extends MyGame with TapDetector{
  @override
  Future<void>onLoad() async {
    super.onLoad();
    await loadSprite('bola.png');
    await loadSprite('caja.jpg');
    add(Floor());
  }

  @override
  void onTapDown(TapDownInfo info){
    super.onTapDown(info);
    if(Random().nextBool()){
      add(Ball());
    } else {
      add(Box());
    }
  }

}