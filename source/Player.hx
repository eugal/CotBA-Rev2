package ;
import org.flixel.FlxSprite;
import org.flixel.FlxObject;
import org.flixel.FlxG;

class Player extends FlxSprite{

	var xSpeed:Float; 
	public var canExit:Bool; 
	public var canClimb:Bool;


	public function new():Void {
		super();
		loadGraphic("assets/brad.png", true, false, 20, 63);
		addAnimation("walk", [0,1,2,3], false);


	}

	override public function update():Void {
		//velocity.x = 0;
		drag.x = 120; 
		acceleration.y = 200;
		//elasticity = .4;
		

		if (FlxG.keys.SPACE == true){
			xSpeed = 120;
		}
		else {
			xSpeed = 60;
		}
		// movement
		if (FlxG.keys.LEFT == true){
			velocity.x = -xSpeed;
			
		}
		if (FlxG.keys.RIGHT == true){
			velocity.x = xSpeed;
		}

		

		super.update();

		// limit horizontal movement to screen
		if (x > FlxG.width - width){
			x = FlxG.width - width;
		}
		else if (x < 0){
			x = 0;
		}
		canExit = false; 
		canClimb = false;
	}
}