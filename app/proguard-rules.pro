## Xposed entry point: referenced by name from META-INF/xposed/java_init.list.
-keep class io.github.zhhhyyyyyy.hypervolumeanc.hook.HookEntry { *; }

## Hook helpers are loaded through the module class loader, keep them intact.
-keep class io.github.zhhhyyyyyy.hypervolumeanc.hook.** { *; }
-keepattributes *Annotation*, Exceptions, InnerClasses, Signature, SourceFile, LineNumberTable
-dontwarn io.github.libxposed.**

## Release builds drop only the chatty logs. Warning/error/info calls stay: the module
## tells users to check the LSPosed log when a switch fails, and the line that shows the
## current/target ANC mode is logged at info level.
-assumenosideeffects class android.util.Log {
    public static *** v(...);
    public static *** d(...);
}
