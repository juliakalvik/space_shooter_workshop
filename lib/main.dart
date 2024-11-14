import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:space_shooter_workshop/player.dart';

void main() {
  runApp(
    GameWidget(game: SpaceShooterGame()),
    );
}

class SpaceShooterGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    world.add(Player());
  }
    }

