package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;
import org.flixel.FlxState;
import org.flixel.FlxGroup;

class PlayState extends FlxState {

	var platforms:FlxGroup;




	override public function create():Void {

		platforms = new FlxGroup();
		add(platforms);


		

		super.create();
	}
	
	override public function update():Void {
		super.update();

		
				
	}


	

}