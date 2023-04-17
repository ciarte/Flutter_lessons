
import 'package:super_jumper/lesson_02_bodyTypes_dynamic_static_kinematic/objects/ball_dynamic.dart';
import 'package:super_jumper/lesson_02_bodyTypes_dynamic_static_kinematic/objects/box_kinematic.dart';
import 'package:super_jumper/lesson_02_bodyTypes_dynamic_static_kinematic/objects/floor_static.dart';
import 'package:super_jumper/myGame.dart';

class GameLesson02 extends MyGame{

  @override
  Future<void> onLoad()async {
    super.onLoad();
    add(FloorStatic());
    add(BoxKinematic());
    add(BallDynamic());
  }
}