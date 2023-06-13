import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class UptoDateShow extends StatefulWidget {
  const UptoDateShow({super.key});

  @override
  State<UptoDateShow> createState() => _UptoDateShowState();
}

class _UptoDateShowState extends State<UptoDateShow> {
  bool showLoader = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CupertinoNavigationBar(
        backgroundColor: Colors.white,
        middle: Text('News'),
      ),
      body: Stack(
        children: [
          WebViewWidget(
              controller: WebViewController()
                ..setJavaScriptMode(JavaScriptMode.unrestricted)
                ..setBackgroundColor(const Color(0x00000000))
                ..setNavigationDelegate(
                  NavigationDelegate(
                    onProgress: (int progress) {
                      // Update loading bar.
                    },
                    onPageStarted: (String url) {},
                    onPageFinished: (String url) {
                      setState(() {
                        showLoader = false;
                      });
                    },
                    onWebResourceError: (WebResourceError error) {},
                    onNavigationRequest: (NavigationRequest request) {
                      // if (request.url.startsWith('https://www.youtube.com/')) {
                      //   return NavigationDecision.prevent;
                      // }
                      return NavigationDecision.navigate;
                    },
                  ),
                )
                ..loadRequest(Uri.parse(
                    "http://landscapeonline.com/mobile-index-tle.php"))),
          showLoader
              ? Center(
                  child: Container(
                    padding: EdgeInsets.zero,
                    width: 60,
                    height: 60,
                    child: const CircularProgressIndicator(),
                  ),
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
