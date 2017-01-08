package model
{
	import events.ViewUpdateEvent;
	
	import flash.events.IEventDispatcher;
	import flash.events.MouseEvent;
	
	import mx.controls.Alert;

	public class BaseComponentModel
	{
		public function BaseComponentModel()
		{
		}
		
		[Dispatcher]
		public var dispatcher:IEventDispatcher;
		
		public function image1_mouseOverHandler(event:MouseEvent):void
		{
			event.currentTarget.alpha = 0.5;
		}
		
		public function image1_mouseOutHandler(event:MouseEvent):void
		{
			event.currentTarget.alpha = 1;
		}
		public function l1_mouseOverHandler(event:MouseEvent):void
		{
			event.currentTarget.setStyle("color","0xff0000");
		}
		
		public function l1_mouseOutHandler(event:MouseEvent):void
		{
			event.currentTarget.setStyle("color","0x0000ff");
		}
		
		public function t1_clickHandler(event:MouseEvent):void
		{
			var viewChangeEvent:ViewUpdateEvent = new ViewUpdateEvent(ViewUpdateEvent.STATE_CHANGE,true);
			viewChangeEvent.data = "instructionpage";
			dispatcher.dispatchEvent(viewChangeEvent);
		}
		
		public function t2_clickHandler(event:MouseEvent):void
		{
			var viewChangeEvent:ViewUpdateEvent = new ViewUpdateEvent(ViewUpdateEvent.SECOND_IMAGE,true);
			viewChangeEvent.data = "instructionpage";
			dispatcher.dispatchEvent(viewChangeEvent);
		}
		
		
		
		[EventHandler(event="ViewUpdateEvent.CNTRLTOMODEL_FIRST")]		
		public function handleEvent() : void
		{
			var viewChangeEvent:ViewUpdateEvent = new ViewUpdateEvent(ViewUpdateEvent.MODELTOVIEW_FIRST,true);
			viewChangeEvent.data = "instructionpage";
			dispatcher.dispatchEvent(viewChangeEvent);	
		}
		
		[EventHandler(event="ViewUpdateEvent.CNTRLTOMODEL_SECOND")]		
		public function handleEvent2() : void
		{
			var viewChangeEvent:ViewUpdateEvent = new ViewUpdateEvent(ViewUpdateEvent.MODELTOVIEW_SECOND,true);
			viewChangeEvent.data = "instructionpage";
			dispatcher.dispatchEvent(viewChangeEvent);	
		}
		
	}
}