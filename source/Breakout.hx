package;

import org.flixel.FlxG;
import org.flixel.FlxSprite;
import org.flixel.FlxState;
import org.flixel.FlxText;
import org.flixel.FlxGroup;

class Breakout extends PlayState {

	//var bg:FlxSprite;
	var t:FlxText;
	public var player:BreakoutPlayer;
	var enemies:FlxGroup;
	var numenemies:Int; 
	var numkills:Int;
	var ammo:Int;
	//var cloud:FlxGroup;
	public var bullets:FlxGroup;
	public var enemyBullets:FlxGroup;
	//public var puff:FlxGroup;


	// Function called when screen is created. Generally used to set things up
	override public function create():Void {

		//bg = new FlxSprite(0, 0, "assets/background.png");
		//add(bg);

//		bullets = new FlxGroup();
//		add(bullets);

		enemyBullets = new FlxGroup();
		add(enemyBullets);
		
		// puff = new FlxGroup();
		// add(puff);
		
		player = new BreakoutPlayer();
		add(player);

		numenemies = 10;
		numkills = 30;

		t = new FlxText(750, 10,40, "00");
		t.size = 23; 
		t.color = 0xfff1f7f6;
		t.alignment = "center";

		add(t);


//for loop, does the thing inside X times
		enemies = new FlxGroup();
		for (i in 0...numenemies){
			enemies.add(new BreakoutEnemy(i *80,140));
			enemies.add(new BreakoutEnemy(i *80,100));
			enemies.add(new BreakoutEnemy(i *80,60));
		}
		add(enemies);

		// cloud = new FlxGroup(); 
		// for(i in 0...10){
		// 	cloud.add(new Cloud(i *80, -80));
		// }
		// add(cloud);


		// enemies.add(new Enemy(200,300));



		// Set a background color
	
		//FlxG.bgColor = 0xff001936;
		// Do everything else that FlxState normally does when created
		super.create();
	}
	
	// Function called every frame
	override public function update():Void {
		//when enemies and bullets overlap do hitEnemy 
		// FlxG.overlap(enemies,bullets,hitEnemy);
		//FlxG.overlap(player, enemyBullets, hitPlayer);
		// FlxG.overlap(player2, enemyBullets, hitPlayer2);

		// if(numkills == 0){
		// 	FlxG.switchState(new Level1());
		// }
	
		// if(FlxG.keys.justPressed("W")&& ammo != 0){
		// 	bullets.add(new Bullet(player.x+14, player.y+20));
		// 	FlxG.play("Shoot");
		// 	ammo --; 
		// }

	


		// Do everything which FlxState normally does every frame
		super.update();

				t.text = Std.string(Std.int(ammo));
	}	

	// public function hitEnemy(enemy:Enemy, bullet:Bullet):Void {
	// 	enemy.kill(); 
	// 	bullet.kill(); 
	// 	numkills--; 

	// }

	//public function hitPlayer(p1:Player, ebullet:EnemyBullet):Void {
		//p1.kill();
		//ebullet.kill();
		//FlxG.switchState(new Level2());

	//}

	// public function hitPlayer2(p2:Player2, ebullet:EnemyBullet):Void {
	// 	ebullet.kill();
	// 	ammo ++;
	// }

}