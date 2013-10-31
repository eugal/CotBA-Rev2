package; 

import org.flixel.FlxSprite;
import org.flixel.FlxG;

class Exit extends FlxSprite { 

	public function new(xPosition:Float, yPosition:Float):Void {
		super(xPosition, yPosition);
		makeGraphic(15, 30,0xffff0f00);
		immovable = true; 
	}

	override public function update():Void { 
		super.update();
	}

}