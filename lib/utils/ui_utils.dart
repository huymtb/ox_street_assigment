import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

void onWidgetBuildDone(Function function) {
  SchedulerBinding.instance!.addPostFrameCallback((_) {
    function();
  });
}

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

void hideKeyboard(BuildContext context) {
  FocusScope.of(context).requestFocus(FocusNode());
}

Future navigateTo(Widget screen,
    {Transition? transition,
    bool clearStack = false,
    bool offCurrentScreen = false,
    bool preventDuplicates = false,
    Duration? duration,
    bool popGesture = true}) async {
  final t = transition ?? Transition.rightToLeftWithFade;
  final d = duration ?? const Duration(milliseconds: 250);
  if (clearStack) {
    return Get.offAll(() => screen, transition: t, duration: d);
  } else if (offCurrentScreen) {
    return Get.off(() => screen,
        transition: t,
        duration: d,
        preventDuplicates: preventDuplicates,
        popGesture: popGesture);
  } else {
    return Get.to(() => screen,
        transition: t,
        duration: d,
        preventDuplicates: preventDuplicates,
        popGesture: popGesture);
  }
}

String shortcutDate(String dateTimeString) {
  try {
    final DateTime dateTime = DateTime.parse(dateTimeString);
    return DateFormat('yyyy-MM-dd').format(dateTime);
  } catch (e) {
    return dateTimeString;
  }
}
