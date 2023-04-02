
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'Ott_Platform/Provider/Ott_Provider.dart';
import 'Ott_Platform/view/Ott_view.dart';
import 'Ott_Platform/view/Ott_web.dart';



void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) =>OttProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => Ottcreen(),
          'web': (context) => Ottweb(),
        },
      ),
    ),
  );
}
