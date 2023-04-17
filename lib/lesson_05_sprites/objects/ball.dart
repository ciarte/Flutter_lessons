import 'package:flame/components.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:super_jumper/myGame.dart';

class Ball extends BodyComponent {
  @override
  Future<void>onLoad() async {
    await super.onLoad();
    final sprite = Sprite(gameRef.images.fromCache('bola.png'));
    add(
        SpriteComponent(
            sprite: sprite,
            size: Vector2(.4,.4),
            anchor: Anchor.center
        )
    );
  }
  @override
  Body createBody(){
    final bodyDef = BodyDef(
      position: Vector2(worldSize.x /2, 0),
      type: BodyType.dynamic
    );

    final shape = CircleShape()..radius = .25;
    final fixture = FixtureDef(shape)
      ..friction = .5
      ..density = 5
      ..restitution = .5;
    return world.createBody(bodyDef)..createFixture(fixture);
  }
}