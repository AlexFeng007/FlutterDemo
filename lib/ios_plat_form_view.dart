import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class plat_form_view extends StatefulWidget {
  @override
  _plat_form_viewState createState() => _plat_form_viewState();
}

class _plat_form_viewState extends State<plat_form_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("platform_view"),
        backgroundColor: Colors.black,
      ),
      body:getPlatFormView(),
    );
  }

  Widget getPlatFormView() {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return UiKitView(
          viewType: "platform_text_view",
          creationParams: <String, dynamic>{"text": "My name is fengbo"},
          creationParamsCodec: const StandardMessageCodec()
      );
    }
  }
}
