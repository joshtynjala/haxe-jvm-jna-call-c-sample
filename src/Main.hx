import haxejna.HaxeJNA.INSTANCE as HaxeJNA;

class Main {
	public static function main():Void {
		var value1 = 3;
		var value2 = 2;

		trace('adding two ints: $value1 + $value2');

		var result = HaxeJNA.add_two_ints(value1, value2);

		trace('result: $result');
	}
}