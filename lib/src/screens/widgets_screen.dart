import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets_explorer/src/utilities/cupertino_icons_custom.dart';

class WidgetsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.lightBackgroundGray,
        child: CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text('Widgets Explorer'),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Container(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(CupertinoIcons.bell_solid, color: CupertinoColors.white,),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: CupertinoColors.activeBlue
                            ),
                          ),
                        title: Text('Actions Sheets and Alerts'),
                        trailing: Icon(CupertinoIcons.right_chevron),
                        onTap: (){
                          Navigator.pushNamed(context, '/actionsheet');
                        },
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 70.0),
                        height: 1.0,
                        color: CupertinoColors.lightBackgroundGray,
                      ),
                      ListTile(
                        leading: Container(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(
                              getCupertinoIconData('squareandpencil'),
                              color: CupertinoColors.white,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: CupertinoColors.black
                            ),
                          ),
                        title: Text('Text Inputs'),
                        trailing: Icon(CupertinoIcons.right_chevron),
                        onTap: (){
                          Navigator.pushNamed(context, '/inputs');
                        },
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 70.0),
                        height: 1.0,
                        color: CupertinoColors.lightBackgroundGray,
                      ),
                      ListTile(
                        leading: Container(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(
                              getCupertinoIconData('slider'),
                              color: CupertinoColors.white,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: CupertinoColors.activeGreen
                            ),
                          ),
                        title: Text('Switch and Slider'),
                        trailing: Icon(CupertinoIcons.right_chevron),
                        onTap: (){
                          Navigator.pushNamed(context, '/slider');
                        },
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 70.0),
                        height: 1.0,
                        color: CupertinoColors.lightBackgroundGray,
                      ),
                      ListTile(
                        leading: Container(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(
                              getCupertinoIconData('segmented'),
                              color: CupertinoColors.white,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: CupertinoColors.activeOrange
                            ),
                          ),
                        title: Text('Segmented Control'),
                        trailing: Icon(CupertinoIcons.right_chevron),
                        onTap: (){
                           Navigator.pushNamed(context, '/segmented');
                        },
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 70.0),
                        height: 1.0,
                        color: CupertinoColors.lightBackgroundGray,
                      ),
                      ListTile(
                        leading: Container(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(
                              getCupertinoIconData('calendar'),
                              color: CupertinoColors.white,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: CupertinoColors.destructiveRed
                            ),
                          ),
                        title: Text('Pickers'),
                        trailing: Icon(CupertinoIcons.right_chevron),
                        onTap: (){
                          Navigator.pushNamed(context, '/picker');
                        },
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: CupertinoColors.inactiveGray,
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
