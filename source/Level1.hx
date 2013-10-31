package; 

import org.flixel.FlxG; 
import org.flixel.FlxGroup;
import org.flixel.FlxSprite;

class Level1 extends PlayState { 

	var p1:Player;
	var exit:Exit;

	override public function create():Void { 
		p1 = new Player();
		add(p1);


		super.create(); 

		FlxG.bgColor = 0xffaaaa00; 
		platforms.add(new Platform(0, 400, FlxG.width,200));

		exit = new Exit(150, 320);
		add(exit);

		

		p1.x = 50;
		p1.y = 320;

		

		
	} 

	override public function update():Void { 
		super.update(); 
			FlxG.collide(p1,platforms);
			FlxG.overlap(p1, exit, nearExit);

		// if (FlxG.keys.UP == true && p1.canExit == true){
		// 	FlxG.switchState(new Level2());
		// }


		}
	public function nearExit(p:Player, e:Exit):Void{ 
			FlxG.switchState(new TakeOff());	


	}	
}