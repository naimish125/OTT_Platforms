import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../Provider/Ott_Provider.dart';





class Ottweb extends StatefulWidget {
  const Ottweb({Key? key}) : super(key: key);

  @override
  State<Ottweb> createState() => _OttwebState();
}

class _OttwebState extends State<Ottweb> {
  OttProvider? OT;
  OttProvider? OF;
  @override
  Widget build(BuildContext context) {
    OF = Provider.of<OttProvider>(context, listen: false);
    OT = Provider.of<OttProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(controller: OT!.webViewController!),
      ),
    );
  }
}