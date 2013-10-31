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
		FlxG.overlap(player, enemyBullets, hitPlayer);





		super.update();

		
				
	}

public function hitPlayer(p1:Player, ebullet:EnemyBullet):Void {
		p1.kill();
		ebullet.kill();
		FlxG.switchState(new Level2());

	}
	

}