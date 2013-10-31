package; 

import org.flixel.FlxSprite;

class Block extends FlxSprite { 

	public function new(xPosition:Float, yPosition:Float):Void {
		super(xPosition, yPosition);
		makeGraphic(20,20,0xffff0000);
	}

	override public function update():Void { 
		super.update();

		
	}

}