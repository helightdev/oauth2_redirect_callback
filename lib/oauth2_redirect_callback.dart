library oauth2_redirect_callback;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import 'src/stub.dart'
  if (dart.library.html) 'src/web.dart';

String get windowOrigin => getOrigin();

final oauth2CallbackRoute = GoRoute(
  path: '/oauth2/callback',
  builder: (BuildContext context, GoRouterState state) {
    return const OAuth2RedirectCallbackView();
  },
);

class OAuth2RedirectCallbackView extends StatefulWidget {
  const OAuth2RedirectCallbackView({super.key});

  @override
  State<OAuth2RedirectCallbackView> createState() => _OAuth2RedirectCallbackViewState();
}

class _OAuth2RedirectCallbackViewState extends State<OAuth2RedirectCallbackView> {

  @override
  void initState() {
    super.initState();
    handleCallback(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const Placeholder(), appBar: AppBar(title: const Text("You can now close this window"),),);
  }
}
