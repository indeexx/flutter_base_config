// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(lala, lalala) =>
      "${lala}${lala}lala,${lalala}${lalala}lalala";

  static String m1(name) => "welcom ${name}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appName": MessageLookupByLibrary.simpleMessage("indeex`s demo"),
        "autoBySystem": MessageLookupByLibrary.simpleMessage("Auto"),
        "companyInfoTitle": MessageLookupByLibrary.simpleMessage("introduce"),
        "darkMode": MessageLookupByLibrary.simpleMessage("Dark Mode"),
        "hi": m0,
        "lightMode": MessageLookupByLibrary.simpleMessage("Light Mode"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "settingLanguage": MessageLookupByLibrary.simpleMessage("Language"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "tabHome": MessageLookupByLibrary.simpleMessage("Home"),
        "themeMode": MessageLookupByLibrary.simpleMessage("Theme Mode"),
        "title": MessageLookupByLibrary.simpleMessage("hello indeex"),
        "welcom": m1
      };
}
