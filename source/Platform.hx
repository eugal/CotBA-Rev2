package; 

import org.flixel.FlxSprite; 

class Platform extends FlxSprite { 

	public function new(xPosition:Float, yPosition:Float, platformWidth:Int, platformHeight:Int):Void{ 
		super(xPosition, yPosition);
		makeGraphic(platformWidth, platformHeight, 0xff00ff00);
		//0x0000ff00 would make it invisble
		immovable = true; 
	}

	override public function update():Void {
		super.update(); 
	}

}