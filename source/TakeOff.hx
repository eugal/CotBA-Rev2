package; 

import org.flixel.FlxG; 
import org.flixel.FlxGroup;
import org.flixel.FlxSprite;

class TakeOff extends PlayState { 

	var p1:ShipCine;
	// var ship:ShipCine;

	override public function create():Void { 
		p1 = new ShipCine();
		add(p1);

		// ship = new ShipCine();
		// add(ship);

		super.create(); 

		FlxG.bgColor = 0xffaaff00; 
		platforms.add(new Platform(0, 400, FlxG.width,200));


		p1.x = 650;
		p1.y = 320;

		
		
	} 

		override public function update():Void { 

			if (p1.y < -1){
					FlxG.switchState(new Breakout());	
			}



		super.update(); 
			FlxG.collide(p1,platforms);
		}	
}