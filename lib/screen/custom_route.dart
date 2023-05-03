import 'package:navigation_and_routing/screen/first.dart';
import 'package:navigation_and_routing/screen/homescreen.dart';
import 'package:navigation_and_routing/screen/login.dart';
import 'package:navigation_and_routing/screen/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Map<String,Widget Function(BuildContext)>getCustomRoutes(){
  return  {
        '/':(context) {
          return SplashScreen();
        },
        '/first':(context) {
          return LoginScreen();
        },
        '/second':(context) {
          return RegisterScreen();
        },
        '/Third':(context) {
          return HomeScreen();
        },
      };
}
Route? onGenerateCustomRoute(RouteSettings routeSettings){
  final name = routeSettings.name;
        Widget? page;
        switch (name) {
          case '/':
            page = SplashScreen();
            break;

          case '/login':
            page = LoginScreen();
            break;

          case '/register':
            page = RegisterScreen();
            break;

          case '/home':
            page = HomeScreen();
            break;

          default:
            page = Scaffold(
              body: Center(
                child: Text("No page found"),
              ),
            );
        }
        return CupertinoPageRoute(
          settings: routeSettings,
          builder: (context) {
            return page ?? SizedBox.shrink();
          },
        );
}