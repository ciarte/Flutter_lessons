// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:core';
import 'package:flutter/material.dart';
import 'package:super_jumper/lessonMenu.dart';
import 'package:super_jumper/lesson_01/gameLesson01.dart';
import 'package:super_jumper/lesson_02_bodyTypes_dynamic_static_kinematic/gameLesson_02.dart';
import 'package:super_jumper/lesson_03_friccion_densidad_restitucion/gameLesson_03.dart';
import 'package:super_jumper/lesson_04_forces_velocity_impulse/gameLesson_04.dart';
import 'package:super_jumper/lesson_05_sprites/gameLesson05.dart';
import 'package:super_jumper/lesson_06/gameLesson06.dart';

import 'package:super_jumper/myGame.dart';

class Routes {
  static const menu= '/';
  static const lesson01= '/lesson 1';
  static const lesson02= '/lesson 2';
  static const lesson03 = '/lesson 3';
  static const lesson04 = '/lesson 4';
  static const lesson05 = '/lesson 5';
  static const lesson06 = '/lesson 6';

  static Route routes(RouteSettings settings){
    MaterialPageRoute _buildRoute(Widget widget){
      return MaterialPageRoute(
          builder: (_)=> widget,
          settings: settings
      );
    }
    switch( settings.name){
      case menu:
        return _buildRoute(const LessonMenu());
      case lesson01:
        return _buildRoute(MyGameWidget(game:GameLesson01()));
        case lesson02:
        return _buildRoute(MyGameWidget(game:GameLesson02()));
      case lesson03:
        return _buildRoute(MyGameWidget(game:GameLesson03()));
      case lesson04:
        return _buildRoute(MyGameWidget(game:GameLesson04()));
      case lesson05:
        return _buildRoute(MyGameWidget(game:GameLesson05()));
      case lesson06:
        return _buildRoute(MyGameWidget(game:GameLesson06()));
        default:
          throw Exception('Route does not exist');
    }
  }
}