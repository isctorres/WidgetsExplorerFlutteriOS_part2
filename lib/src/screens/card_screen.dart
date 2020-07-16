import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text('Cards'),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              _cardTipo1(),
              _cardTipo2(context),
              _cardTipo2(context),
              _cardTipo2(context),
              _cardTipo2(context)
            ]),
          )
        ],
      )
    );
  }
              
  Widget _cardTipo1() {
    return Card(
      elevation: 15.0,
      margin: EdgeInsets.all(20.0),
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(CupertinoIcons.bell_solid),
            title: Text('This is a card title'),
            subtitle: Text('Lorem'),
          )
        ],
      ) 
    );
  }

  Widget _cardTipo2(BuildContext contex) {

    final _card = Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        FadeInImage(
          placeholder: AssetImage('assets/cupertino_activity_indicator.gif'),
          image: NetworkImage('https://viajes.nationalgeographic.com.es/medio/2017/02/20/gettyimages-142527307_fb992fd8.jpg'),
          fit: BoxFit.cover,
          fadeInDuration: Duration(milliseconds: 200),
        ),
        Opacity(
          opacity: .6,
          child: Container(
            height: 80.0,
            width: double.infinity,
            color: CupertinoColors.black,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('2020-07-04', style: TextStyle(color: CupertinoColors.white),),
                Text('Chichen Itza', style: TextStyle(color: CupertinoColors.white, fontSize: 25.0),)
              ],
            ),
          ),
        )
      ],
    );
    
    return Container(
      //height: 100.0,
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        //color: CupertinoColors.activeBlue,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: CupertinoColors.darkBackgroundGray.withOpacity(.7),
            offset: Offset(0.0, 5.0),
            blurRadius: 8.0
          )
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: _card
      ),
    );
  }
}