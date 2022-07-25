import 'package:flutter/material.dart';
import 'package:on_generate_route/child_pages/ExtractArgumentsScreen.dart';
import 'package:on_generate_route/HomeScreen.dart';
import 'package:on_generate_route/child_pages/PassArgumentsScreen.dart';
import 'package:on_generate_route/models/ScreenArguments.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        // Burada onceden register edilmis bir route var.
        // Bunu kullaniyoruz (extractArguments).
        // routeName = '/extractArguments';
        ExtractArgumentsScreen.routeName: (context) =>
            const ExtractArgumentsScreen(),
      },
      // Provide a function to handle named routes.
      // Use this function to identify the named
      // route being pushed, and create the correct
      // Screen.
      // Burasi fallback metodu gibi bir sey. Eger routes icerisinde
      // bulunamayan bir route execute edilirse burada handle edebiliriz.
      onGenerateRoute: (settings) {
        // If you push the PassArguments route
        // routeName = '/passArguments';
        if (settings.name == PassArgumentsScreen.routeName) {
          // Cast the arguments to the correct
          // type: ScreenArguments.
          final args = settings.arguments as ScreenArguments;

          // Then, extract the required data from
          // the arguments and pass the data to the
          // correct screen.
          return MaterialPageRoute(
            builder: (context) {
              return PassArgumentsScreen(
                title: args.title,
                message: args.message,
              );
            },
          );
        }
        // The code only supports
        // PassArgumentsScreen.routeName right now.
        // Other values need to be implemented if we
        // add them. The assertion here will help remind
        // us of that higher up in the call stack, since
        // this assertion would otherwise fire somewhere
        // in the framework.
        assert(false, 'Need to implement ${settings.name}');
        return null;
      },
      title: 'Navigation with Arguments',
      home: const HomeScreen(),
    );
  }
}
