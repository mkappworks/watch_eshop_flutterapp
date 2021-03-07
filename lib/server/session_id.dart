import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:watch_store_app/server/server.dart';

class SessionId {
  getSessionId(BuildContext context) async {
    final sessionId = await Server().createCheckout();
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('sessionID: $sessionId'),
      ),
    );
  }
}
