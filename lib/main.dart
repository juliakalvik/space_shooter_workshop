import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:space_shooter_workshop/player.dart';


void main() {
  runApp(
    GameWidget(game: SpaceShooterGame()),
    );
}

class SpaceShooterGame extends FlameGame with DragCallbacks {
  late final Player player;

  @override
  Future<void> onLoad() async {
    player = Player();
    world.add(player);
  }

  @override 
  void onDragUpdate(DragUpdateEvent event) {
    player.position += event.canvasDelta;
  }
    }

