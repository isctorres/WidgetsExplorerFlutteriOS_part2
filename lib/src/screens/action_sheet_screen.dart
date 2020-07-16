import 'package:flutter/cupertino.dart';
 
class ActionSheetScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ActionSheetScreenState();
  }
}

class _ActionSheetScreenState extends State<ActionSheetScreen> {

  String _selectedValue;
  
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Action Sheet and Alerts'),
          previousPageTitle: 'Widgets',
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 50.0,),
                CupertinoButton.filled(
                  padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 10.0),
                  child: Text('Alert'),
                  onPressed: () => _showAlert(context),
                ),
                SizedBox(height: 16.0,),
                CupertinoButton.filled(
                  padding: EdgeInsets.symmetric(horizontal: 73.0, vertical: 10.0),
                  child: Text('Action Sheet'),
                  onPressed: () => _showActionSheet(context),
                ),
                Text('Seleccionaste la opción: $_selectedValue')
              ],
            ),
          ),
        )
    );
  }

  void _showAlert(BuildContext context){
    showCupertinoDialog<String>(
      context: context,
      builder: (context){
        return CupertinoAlertDialog(
          title: Text('Titulo del Dialogo'),
          content: Text('Contenido del dialogo'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text('Cancelar'),
              onPressed: () => Navigator.pop(context, 'Cancelar'),
            ),
            CupertinoDialogAction(
              child: Text('Aceptar'),
              onPressed: () => Navigator.pop(context, 'Aceptar'),
            ),
          ],
        ); 
      }
    ).then((value){
      setState(() {
        _selectedValue = value;
      });
    });
  }

  void _showActionSheet(BuildContext context){
    showCupertinoModalPopup<String>(
      context: context,
      builder: (context){
        return CupertinoActionSheet(
          title: Text('Titulo del Dialogo'),
          message: Text('Contenido del dialogo'),
          actions: <Widget>[
            CupertinoActionSheetAction(
              child: Text('Flutter'),
              isDestructiveAction: true,
              onPressed: () => Navigator.pop(context, 'Flutter'),
            ),
            CupertinoActionSheetAction(
              child: Text('React Native'),
              //isDestructiveAction: true,
              onPressed: () => Navigator.pop(context, 'React Native'),
            ),
            CupertinoActionSheetAction(
              child: Text('Xamarin'),
              //isDestructiveAction: true,
              onPressed: () => Navigator.pop(context, 'Xamarin'),
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
              child: Text('Cancelar'),
              isDefaultAction: true,
              onPressed: () => Navigator.pop(context, 'Cancelar'),
            ),
        ); 
      }
    ).then((value){
      setState(() {
        _selectedValue = value;
      });
    });
  }
}