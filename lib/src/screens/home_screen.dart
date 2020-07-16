import 'package:flutter/cupertino.dart';
import 'package:widgets_explorer/src/routes/routes.dart';

import 'package:widgets_explorer/src/screens/animation_screen.dart';
import 'package:widgets_explorer/src/screens/card_screen.dart';
import 'package:widgets_explorer/src/screens/widgets_screen.dart';

class HomeScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            title: Text('Widgets') 
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.play_arrow),
            title: Text('Animations') 
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.share_up),
            title: Text('Cards') 
          )
        ],
      ),
      tabBuilder: (context,index){
        return CupertinoTabView(
          routes: getApplicationRoutes(),
            builder: (context){
            switch(index){
              case 0:
                return WidgetsScreen();
                break;
              case 1: 
                return AnimationScreen();
                break;
              case 2: 
                return CardScreen();
                break;
            }
            return WidgetsScreen();
          },
        );
      },
    );
  }
}