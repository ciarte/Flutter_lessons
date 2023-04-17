

import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:super_jumper/myGame.dart';

class Ball extends BodyComponent{

  @override
  Body createBody(){
  final bodyDef = BodyDef(
    position: Vector2(worldSize.x / 2, 0),
    type: BodyType.dynamic,
  );

  final shape = CircleShape()..radius = .15;
  final fixtureDef = FixtureDef(shape);
  return world.createBody(bodyDef)..createFixture(fixtureDef);
  }
}