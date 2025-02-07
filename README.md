# Call a C function using the Haxe JVM target

A sample [Haxe](https://haxe.org/) application using the [JVM target](https://haxe.org/manual/target-jvm-getting-started.html) that dynamically loads a C shared library at run-time and calls a native function. Uses [Java Native Access](https://github.com/java-native-access/jna).

## Build

To build the C shared library, see [libhaxejna/README.md](libhaxejna/README.md).

To build the Haxe application, run the following command in a terminal:

```haxe
haxe jvm.hxml
```

To start the Haxe application, run the following command in a terminal:

```haxe
java -jar bin/app.jar
```

It should print output that looks something like this:

```
adding two ints: 3 + 2
result: 5
```

Sample created by [Josh Tynjala](https://github.com/sponsors/joshtynjala), the author of [Feathers UI](https://feathersui.com/) and core contributor to [OpenFL](https://openfl.org/).