import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:super_jumper/main.dart';
import 'package:super_jumper/routes.dart';

//                          x ,  y
final screenSize = Vector2(1280,720);
final worldSize = Vector2(12.8, 7.2);


class MyGame extends Forge2DGame with KeyboardEvents {
  MyGame(): super(zoom: 100, gravity: Vector2(0,15));

  final totalBodies = TextComponent(
    position: Vector2(5, 690))
  ..positionType = PositionType.viewport;

  final fps = FpsTextComponent(
    position: Vector2(5,665))
  ..positionType = PositionType.viewport;


  @override
  Future<void> onLoad() async {
    camera.viewport = FixedResolutionViewport(screenSize);

    add(_Background(size: screenSize)..positionType = PositionType.viewport);
    add(totalBodies);
    add(fps);

  }

  @override
  void update(double dt){
    super.update(dt);
    totalBodies.text = 'Bodies: ${world.bodies.length}';
  }

  @override
  KeyEventResult onKeyEvent (
      RawKeyEvent event, Set keysPressed){
    if(event is RawKeyDownEvent){
      if(keysPressed.contains(LogicalKeyboardKey.escape)){
        navigatorKey.currentState
            ?.pushNamedAndRemoveUntil(
            Routes.menu,
                (route) => false);
        return KeyEventResult.handled;
      }
    }
    return KeyEventResult.ignored;
  }

  @override
  Color backgroundColor(){
    return Colors.red;
  }

}

class _Background extends PositionComponent{
  _Background({super.size});
  @override
  void render(Canvas canvas){
    canvas.drawRect(Rect.fromLTWH(0, 0, size.x, size.y), BasicPalette.black.paint());
  }
}

class MyGameWidget extends StatelessWidget{
  final MyGame game;

  const MyGameWidget({super.key, required this.game});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            navigatorKey.currentState?.pushNamedAndRemoveUntil(Routes.menu, (r) => false);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: GameWidget(
        game: game,
      ),
    );
  }

}