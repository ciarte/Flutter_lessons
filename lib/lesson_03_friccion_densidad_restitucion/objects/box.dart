import 'package:flame_forge2d/flame_forge2d.dart';

class Box extends BodyComponent{
  @override
  Body createBody(){
    final bodyDef = BodyDef(
      position: Vector2(10, 0),
      type: BodyType.dynamic,
    );

    final shape = PolygonShape()..setAsBoxXY(.25, .25);
    final fixture = FixtureDef(shape)
      ..restitution = .6
      ..density = 3
      ..friction = .25;
    return world.createBody(bodyDef)..createFixture(fixture);
  }
}