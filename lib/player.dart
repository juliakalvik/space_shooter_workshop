import 'package:flame/components.dart';
import 'package:flame/flame.dart';


class Player extends SpriteAnimationComponent {
@override Future<void> onLoad() async {
  super.onLoad();
  final image = await Flame.images.load('starfighter_2.png');
  animation = SpriteAnimation.fromFrameData(
    image,
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.16,
      textureSize: Vector2(48, 48),
    ),
  );
  scale = Vector2(4, 4);
  anchor = Anchor.center;
}

}