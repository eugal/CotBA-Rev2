package; 

import org.flixel.FlxG; 
import org.flixel.FlxGroup;
import org.flixel.FlxSprite;

class Level2 extends PlayState { 

	var p1:Ship;
	var ship:ShipCine;

	override public function create():Void { 
		p1 = new Ship(20,20);
		add(p1);

		ship = new ShipCine();
		add(ship);

		super.create(); 

		FlxG.bgColor = 0xffaa0000; 
		platforms.add(new Platform(0, 400, FlxG.width,200));

		// exit = new Exit(FlxG.width-60, FlxG.height-40);
		// add(exit);

		

		ship.y = 20;
		ship.x = 20;

		

		
	} 

	override public function update():Void { 
		super.update(); 
			FlxG.collide(p1,platforms);
			//FlxG.overlap(p1, ship, nearExit);

		// if (FlxG.keys.UP == true && p1.canExit == true){
		// 	FlxG.switchState(new Level2());
		// }


	}
	// public function nearExit(p1:Player, e:Ship):Void { 
	// 	FlxG.switchState(new Level1());
	// }
}