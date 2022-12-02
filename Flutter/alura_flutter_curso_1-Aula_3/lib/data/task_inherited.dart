import 'package:flutter/material.dart';

class TaskInherited extends InheritedWidget {
  const TaskInherited({
    super.key,
    required super.child,
  });

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No FrogColor found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return;
  }
}
