import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:super_jumper/myGame.dart';

class BoxKinematic extends BodyComponent{
  @override
  Body createBody() {
    final bodyDef = BodyDef(
      position: Vector2(worldSize.x / 2, worldSize.y / 2),
      type: BodyType.kinematic,
      angularVelocity: 2.5,
    );
    final shape = PolygonShape()..setAsBoxXY(.15,1.25);
    final fixtureDef = FixtureDef(shape);
    return world.createBody(bodyDef)..createFixture(fixtureDef);
  }
}