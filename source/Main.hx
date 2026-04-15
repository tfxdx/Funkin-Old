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
				fpsVar.positionFPS(10, 3, Math.min(w / FlxG.width, h / FlxG.height));
			}
		});
	}
}
