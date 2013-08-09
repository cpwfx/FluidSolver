package fluidsolver.core 
{
	import flash.utils.ByteArray;
	
	/**
	 * ...
	 * @author Tom Byrne
	 */
	public interface IFluidSolver 
	{
		function setFPS(value:int, returnHandler:Function = null):void;
		function setupSolver(gridWidth:int, gridHeight:int, screenW:int, screenH:int, drawFluid:Boolean, isRGB:Boolean, doParticles:Boolean, maxParticles:int = 5000, cullAlpha:Number = 0, returnHandler:Function = null):void;
		
		/**
		 * 
		 * @return Returns an int identifier of the particle emitter
		 */
		function addParticleEmitter(x:Number, y:Number, rate:Number, xSpread:Number, ySpread:Number, alphVar:Number, massVar:Number, decay:Number, returnHandler:Function = null):void;
		function changeParticleEmitter(index:int, x:Number, y:Number, rate:Number, xSpread:Number, ySpread:Number, alphVar:Number, massVar:Number, decay:Number, returnHandler:Function = null):void;
		function updateSolver(timeDelta:Number, returnHandler:Function = null):void;
		function clearParticles(returnHandler:Function = null):void;
		function setForce(tx:Number, ty:Number, dx:Number, dy:Number, returnHandler:Function = null):void;
		function setColour(tx:Number, ty:Number, r:Number, g:Number, b:Number, returnHandler:Function = null):void;
		function setForceAndColour(tx:Number, ty:Number, dx:Number, dy:Number, r:Number, g:Number, b:Number, returnHandler:Function = null):void;
		function setGravity(x:Number, y:Number, returnHandler:Function = null):void;
		
		
		function get sharedBytes():ByteArray;
		function get particlesCountPos():int;
		function get particlesDataPos():int;
		function get maxParticlesPos():int;
		function get particleEmittersPos():int;
		function get particleImagePos():int;
		function get fluidImagePos():int;
		
		function get rOldPos():int;
		function get gOldPos():int;
		function get bOldPos():int;
		function get uOldPos():int;
		function get vOldPos():int;
	}
	
}