package haxejna;

import java.com.sun.jna.Library;
import java.com.sun.jna.Native;
import java.com.sun.jna.NativeLibrary;
import java.io.File;

interface HaxeJNA extends Library {
	// use the same name as the C functions
	function add_two_ints(a:Int, b:Int):Int;
}

// the library file name is libhaxejna with the extension .dll, .so, or .dylib.
// we pass haxejna as the library name, without the lib prefix or the file extension.
// the second argument is the Java class name, which matches the Haxe one.
var INSTANCE:HaxeJNA = Native.load("haxejna", java.lang.Class.forName("haxejna.HaxeJNA"));

function __init__():Void {
	// let's locate the library file, relative to the .jar file.
	// in this case, it's in ../libhaxejna/build
	var jarFile = new File(java.lang.Class.forName("haxejna.HaxeJNA").getProtectionDomain().getCodeSource().getLocation().toURI());
	var libraryBuildDir = new File(jarFile.getParentFile().getParentFile(), "libhaxejna/build/");
	NativeLibrary.addSearchPath("haxejna", libraryBuildDir.getPath());
}