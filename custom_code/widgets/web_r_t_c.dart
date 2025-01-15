// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '../../auth/firebase_auth/auth_util.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class WebRTC extends StatefulWidget {
  const WebRTC({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<WebRTC> createState() => _WebRTCState();
}

class _WebRTCState extends State<WebRTC> {
  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID:
          549277842, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign:
          "9df8219c6bdf942b36ab7f0ccbf5ec1c9590d62dd359a8ce996e44e972eb3fcd", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: currentUserUid,
      userName: currentUserEmail,
      callID: "test",
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
    );
  }
}
