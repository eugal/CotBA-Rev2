package ;

import org.flixel.FlxSprite;
import org.flixel.FlxObject;
import org.flixel.FlxG;


class ShipCine extends FlxSprite {

	
	public function new():Void {
		super();
		//makeGraphic(60, 20, 0xffffffff);
		loadGraphic("assets/dataship4.png", true, false, 70, 80);
		addAnimation("idle", [1]);
		addAnimation("thrust", [0]);
		addAnimation("left", [2]);
		addAnimation("right", [3]);
//		antialiasing = true;

	}

	override public function update():Void {

		drag.y = 120; 
		//acceleration.y = 200;
	
		if(FlxG.keys.UP == true){
			velocity.y = -200;
			play("thrust");
			
		}

		else {
			play("idle");
		}
		super.update();	

		if (x < 0){
			x = 0;
		}
		if (x > FlxG.width-width){
			x = FlxG.width-width;

		}
			
	}
}