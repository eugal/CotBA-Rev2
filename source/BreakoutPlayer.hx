package; 

import org.flixel.FlxG;
import org.flixel.FlxSprite;

class BreakoutPlayer extends FlxSprite { 

	public function new():Void{ 
		super(FlxG.width/2, FlxG.height-80);
		loadGraphic("assets/dataship4.png", true, false, 70, 80);

		
	}

	override public function update():Void{ 
		super.update();

		velocity.x = 0;
		drag.x = 120; 

		if(FlxG.keys.LEFT == true){
			velocity.x = -300;
		}
		if(FlxG.keys.RIGHT == true){
			velocity.x = 300;
		}
//cast allows to reach out to screen 2
		

	
		if(x < 0){


			x = 0;
		}
		if(x > FlxG.width-width){
			x = FlxG.width-width;
		}




	}
}