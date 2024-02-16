import 'dart:html';

import 'package:flutter/cupertino.dart';

Future handleCallback(BuildContext context) async {
  var uri = Uri.parse(window.location.href);
  var code = uri.queryParameters["code"];
  print("Code: $code");
  if (code != null) {
    window.opener!.postMessage(uri.toString(), window.location.origin);
    window.close();
    return;
  }
  throw Exception("Invalid redirect");
}

String getOrigin() {
  var uri = Uri.parse(window.location.href);
  return uri.origin;
}