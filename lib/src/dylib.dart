import 'dart:ffi' as ffi;
import 'package:dylib/dylib.dart';
import 'generated_bindings.dart';

GLFW? _dylib;
GLFW get glfw {
  return _dylib ??= GLFW(ffi.DynamicLibrary.open(resolveDylibPath(
    'ffi/glfw3',
    dartDefine: 'GLFW_PATH',
    environmentVariable: 'GLFW__PATH',
  )));
}
