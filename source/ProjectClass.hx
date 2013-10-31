package;

import flash.Lib;
import org.flixel.FlxGame;
	
class ProjectClass extends FlxGame {	
	public function new() {
		var stageWidth:Int = Lib.current.stage.stageWidth;
		var stageHeight:Int = Lib.current.stage.stageHeight;

		super(stageWidth, stageHeight, Level1, 1, 30, 30);
	}
}
