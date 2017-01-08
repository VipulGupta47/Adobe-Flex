package controllers
{	
	
	import events.ViewUpdateEvent;
	
	import flash.events.IEventDispatcher;
	
	import mx.controls.Alert;

	public class ApplicationController
	{
		[Dispatcher]
		public var dispatcher:IEventDispatcher;
		
		/**
		 * Process event
		 * 
		 */
		
		[EventHandler(event="ViewUpdateEvent.STATE_CHANGE")]		
		public function handleEvent() : void
		{
			var viewChangeEvent:ViewUpdateEvent = new ViewUpdateEvent(ViewUpdateEvent.CNTRLTOMODEL_FIRST,true);
			viewChangeEvent.data = "instructionpage";
			dispatcher.dispatchEvent(viewChangeEvent);
			//Alert.show("Event Handled at Controller");	
		}
		
		
		[EventHandler(event="ViewUpdateEvent.SECOND_IMAGE")]		
		public function handleEvent1() : void
		{
			var viewChangeEvent:ViewUpdateEvent = new ViewUpdateEvent(ViewUpdateEvent.CNTRLTOMODEL_SECOND,true);
			viewChangeEvent.data = "instructionpage";
			dispatcher.dispatchEvent(viewChangeEvent);
			//Alert.show("Event Handled at Controller");	
		}
		
	}
}