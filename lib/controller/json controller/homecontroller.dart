import 'dart:convert';

import 'package:flutter/cupertino.dart';

List info = [];
List videoinfo = [];

initData(BuildContext context) {
  DefaultAssetBundle.of(context).loadString("json/info.json").then((value) {
    info = jsonDecode(value);
  });
}

initVideoData(BuildContext context) {
  DefaultAssetBundle.of(context)
      .loadString("json/videoinfo.json")
      .then((value) {
    videoinfo = jsonDecode(value);
  });
}
