import 'package:bonfire/bonfire.dart';

const spriteString = "sprites/champions/Arthax.png";

class PlayerSpriteSheet {
  static Future<SpriteAnimation> get playerWalkDown => SpriteAnimation.load(
    spriteString,
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.2,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(16, 0),
    ),
  );

  static Future<SpriteAnimation> get playerWalkUp => SpriteAnimation.load(
    spriteString,
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.2,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(16, 16),
    ),
  );

  static Future<SpriteAnimation> get playerWalkRight => SpriteAnimation.load(
    spriteString,
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.2,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(16, 32),
    ),
  );

  static Future<SpriteAnimation> get playerWalkLeft => SpriteAnimation.load(
    spriteString,
    SpriteAnimationData.sequenced(
      amount: 4,
      stepTime: 0.2,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(16, 48),
    ),
  );


  static Future<SpriteAnimation> get playerIdleDown => SpriteAnimation.load(
    spriteString,
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.3,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(0, 0)
    ),
  );

  static Future<SpriteAnimation> get playerIdleUp => SpriteAnimation.load(
    spriteString,
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.3,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(0, 16),
    ),
  );

  static Future<SpriteAnimation> get playerIdleRight => SpriteAnimation.load(
    spriteString,
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.3,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(0, 32),
    ),
  );

  static Future<SpriteAnimation> get playerIdleLeft => SpriteAnimation.load(
    spriteString,
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.3,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(0, 48),
    ),
  );


  static Future<SpriteAnimation> get playerAttackDown => SpriteAnimation.load(
    spriteString,
    SpriteAnimationData.sequenced(
      amount: 6,
      stepTime: 0.1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(0, 64),
    ),
  );

  static Future<SpriteAnimation> get playerAttackUp => SpriteAnimation.load(
    spriteString,
    SpriteAnimationData.sequenced(
      amount: 6,
      stepTime: 0.1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(0, 80),
    ),
  );

  static Future<SpriteAnimation> get playerAttackRight => SpriteAnimation.load(
    spriteString,
    SpriteAnimationData.sequenced(
      amount: 6,
      stepTime: 0.1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(0, 96),
    ),
  );

  static Future<SpriteAnimation> get playerAttackLeft => SpriteAnimation.load(
    spriteString,
    SpriteAnimationData.sequenced(
      amount: 6,
      stepTime: 0.1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(0, 112),
    ),
  );
}