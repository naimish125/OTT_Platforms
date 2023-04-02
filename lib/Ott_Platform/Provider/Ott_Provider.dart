import 'package:flutter/foundation.dart';
import 'package:webview_flutter/webview_flutter.dart';

class OttProvider extends ChangeNotifier {
  WebViewController? webViewController;

  List images = [
    "assets/images/Amezon.png",
    "assets/images/hotstar.png",
    "assets/images/mx.jpg",
    "assets/images/Netflix.png",
    "assets/images/sonylive.jpg",
    "assets/images/zee5.jpg",
  ];

  List Link = [
    "https://www.primevideo.com/",
    "https://www.hotstar.com/in",
    "https://www.mxplayer.in/",
    "https://www.netflix.com/in/",
    "https://www.sonyliv.com/",
    "https://www.zee5.com/",
  ];

  List names = [
    "Amezon Prime",
    "Hotstar",
    "Mx Player",
    "Netflix",
    "Sony liv",
    "Zee 5",
  ];

  void loadurl(int index) {
    webViewController = WebViewController();
    webViewController!.loadRequest(
      Uri.parse("${Link[index]}"),
    );
  }
}