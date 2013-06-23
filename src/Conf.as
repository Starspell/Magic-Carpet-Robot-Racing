package
{
	import net.flashpunk.utils.Key;

	public class Conf
	{
		public static const screenSize:Array = [1000, 700];
		
		// map world
		public static var levelData:Array = [
			// level 1
			{
				// positions to start the lines at
				startPts: [[400, 80], [700, 120]],
				// right positions to end the lines at
				endPts: [[600, 600], [850, 630]],
				// list of [type, data]
				// for target: data is position
				// for gate: data is [startx, starty, endx, endy]
				checkpoints: [
					["target", [500, 400]],
					["gates", [600, 300, 800, 250]],
					["gates", [600, 400, 850, 500]]
				]
			}
		];
		public static var boundarySpace:int = 500;

		// carpet world
		public static var carpetSize:Array = [8, 12];
		public static var carpetTileSize:Array = [40, 40];
		
		// Directions on carpet
		public static var left:int = 0;
		public static var up:int = 1;
		public static var right:int = 2;
		public static var down:int = 3;
		
		// Carpet related constants
		public static var thrusterForce:Number = 0.1;
		public static var carpetMass:Number = 1;
		public static var carpetMOI:Number = 1000;
		public static var carpetFriction:Number = 0.1;
		public static var carpetRotFriction:Number = 5;
		public static var cannonFireInterval:int = 60;
		// Carpet bouncing consts:
		public static var buoyRepel:Number = 3; //Buoy repulsion factor on bounce.
		public static var edgeRepel:Number = 3; //Edge of world repulsion factor on bounce.
		
		public static var gateCollideDist:Number = 15;

		
		// Other Entity Constants
		
		// Player related constants
		public static var playerKeys:Array = [
			{
				move: [Key.LEFT, Key.UP, Key.RIGHT, Key.DOWN],
				grab: [Key.SPACE, Key.SHIFT]
			}
		];
		public static var tweenTime:Number = 10;
		public static var moveDelay:int = 4;
		
		public static function radiansToDegrees(rad:Number):Number
		{
			rad %= (2 * Math.PI);
			rad /= (2 * Math.PI);
			rad *= 360;
			return rad;
		}
		
		public static var bulletSpeed:Number = 4;
	}
}
