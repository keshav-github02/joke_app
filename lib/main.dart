import 'package:flutter/material.dart';
import 'package:joke_app/Joke%20Generator/Provider%20Services/provider_services.dart';
import 'package:provider/provider.dart';

import 'Joke Generator/joke_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<JokeProviderServices>(
          create: (_) => JokeProviderServices(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: JokeScreen(),
      ),
    );
  }
}
