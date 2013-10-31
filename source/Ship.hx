// Basic player
package ;

import org.flixel.FlxG;
import org.flixel.FlxSprite;
import org.flixel.util.FlxAngle;


class Ship extends FlxSprite {

	var thrust:Float; 
	
	public function new(startX:Float, startY:Float):Void {
		super(startX, startY);
		//makeGraphic(60, 20, 0xffffffff);
		loadGraphic("assets/dataship4.png", true, false, 70, 80);
		addAnimation("idle", [1]);
		addAnimation("thrust", [0]);
		addAnimation("left", [2]);
		addAnimation("right", [3]);
		antialiasing = true;
		//thrust = 0;
	}

	override public function update():Void {
		
		//Ships LEFT RIGHT
		angularVelocity = 0;
		if(FlxG.keys.LEFT){
			play("left");
			angularVelocity -= 240;
		}
		else if(FlxG.keys.RIGHT){
			play("right");
			angularVelocity += 240;
		}

		//Thrust
		acceleration.x = 0;
		acceleration.y = 0;
		if(FlxG.keys.UP){
			play("thrust");
			FlxAngle.rotatePoint(0, 90, 0, 0, angle, acceleration);
		}

		// else if(FlxG.keys.DOWN){
		// FlxAngle.rotatePoint(0, 0, 0, 90, angle, acceleration);
		// }



		// if(FlxG.keys.justPressed("SPACE") == true){

		// 	FlxG.play("Shoot");
		// 	cast(FlxG.state, PlayState).bullets.add(new Bullet(x+20, y-20));

		// }
		else {
			play("idle");
		}

		if (x < 0){
			x = 0;
		}
		if (x > FlxG.width-width){
			x = FlxG.width-width;

		}
		super.update();		
	}
}