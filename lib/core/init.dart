import 'package:flutter/material.dart';
import 'package:writer/utils/sp_util.dart';

Future init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SpUtil.getInstance();
}
