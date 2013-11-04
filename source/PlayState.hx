package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;
import org.flixel.FlxState;
import org.flixel.FlxGroup;

class PlayState extends FlxState {

	var platforms:FlxGroup;
	public var bullets:FlxGroup;
	public var enemyBullets:FlxGroup;
	public var breakoutplayer:BreakoutPlayer;





	override public function create():Void {

		enemyBullets = new FlxGroup();
		add(enemyBullets);

		platforms = new FlxGroup();
		add(platforms);

		super.create();
	}
	
	override public function update():Void {
		FlxG.overlap(breakoutplayer, enemyBullets, hitPlayer);
		super.update();
	}

		public function hitPlayer(p1:BreakoutPlayer, ebullet:EnemyBullet):Void {
		p1.kill();
		ebullet.kill();
		FlxG.switchState(new Level2());

	}
}