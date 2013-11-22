
package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.events.TextEvent;
	import flash.events.TouchEvent;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author Alex
	 */
	public class Main extends Sprite 
	{
s		private var randomColor:int = 0xFFFFFF * Math.random();
		private var circlesInVector:Vector.<Sprite> = new Vector.<Sprite>;
		private var circles:Sprite = new Sprite();
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			stage.addEventListener(KeyboardEvent.KEY_DOWN, addCircles);
			
			
			
			
		}
		
		
		
		
		
		private function addCircles(e:KeyboardEvent):void 
		{
			if (e.keyCode == 32) 
			{
				for (var i:int = 0; i < 18; i++) 
				{
					var circle:CircleProps = new CircleProps();
					circlesInVector.push(circle)
					addChild(circle);
					
					
				}
				
				for (var j:int = 0; j < 1; j++) 
				{
					var dangerCircle:DangCircle = new DangCircle();
					circlesInVector.push(dangerCircle);
					addChild (dangerCircle);
				}
				
			}
			
		}
		
		
		
	}
	
}
