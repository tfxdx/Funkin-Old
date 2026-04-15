package;

import flixel.FlxGame;
import flixel.FlxG;
import openfl.display.FPS;
import openfl.display.Sprite;

class Main extends Sprite
{
	public var fpsVar:FPS;

	public function new()
	{
		super();

		addChild(new FlxGame(1280, 720, TitleState));

		fpsVar = new FPS(10, 3, 0xFFFFFF);
		addChild(fpsVar);

		FlxG.signals.gameResized.add(function (w, h) {
	if (fpsVar != null)
	{
		var scale = Math.min(w / 1280, h / 720);
		fpsVar.x = 10;
		fpsVar.y = 3;
		fpsVar.scaleX = scale;
		fpsVar.scaleY = scale;
	}
});
	}
}
