//
// Generated file. Do not edit.
//

// ignore: unused_import
import 'dart:ui';

import 'package:firebase_core_web/firebase_core_web.dart';
import 'package:google_sign_in_web/google_sign_in_web.dart';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void registerPlugins(PluginRegistry registry) {
  FirebaseCoreWeb.registerWith(registry.registrarFor(FirebaseCoreWeb));
  GoogleSignInPlugin.registerWith(registry.registrarFor(GoogleSignInPlugin));
  registry.registerMessageHandler();
}
