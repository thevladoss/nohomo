import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.08),
            borderRadius: BorderRadius.all(Radius.circular(16.0))
          ),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                radius: 28.0,
                backgroundColor: Colors.deepPurple,
                child: Text('ВО', style: TextStyle(fontSize: 20.0),),
              ),
              SizedBox(width: 16.0,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Осин', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),),
                    Text('Владислав', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    behavior: SnackBarBehavior.floating,
                    content: Text('Разраб не сделал рабочую кнопку! Пнуть разраба можно в телеграм @thevladoss'),
                  ));
                },
                icon: Icon(Icons.person)
              ),
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    behavior: SnackBarBehavior.floating,
                    content: Text('Разраб не сделал рабочую кнопку! Пнуть разраба можно в телеграм @thevladoss'),
                  ));
                },
                icon: Icon(Icons.logout)
              )
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.08),
              borderRadius: BorderRadius.all(Radius.circular(16.0))
          ),
          child: Column(
            children: <Widget>[
              InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(16.0), topLeft: Radius.circular(16.0))
                ),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    behavior: SnackBarBehavior.floating,
                    content: Text('Разраб не сделал рабочую кнопку! Пнуть разраба можно в телеграм @thevladoss'),
                  ));
                },
                child: ListTile(
                  title: Text('Настройки', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),),
                ),
              ),
              InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    behavior: SnackBarBehavior.floating,
                    content: Text('Разраб не сделал рабочую кнопку! Пнуть разраба можно в телеграм @thevladoss'),
                  ));
                },
                child: ListTile(
                  title: Text('О приложении', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500)),
                ),
              ),
              InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    behavior: SnackBarBehavior.floating,
                    content: Text('Разраб не сделал рабочую кнопку! Пнуть разраба можно в телеграм @thevladoss'),
                  ));
                },
                child: ListTile(
                  title: Text('Условия использования', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500)),
                ),
              ),
              InkWell(
                customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16.0), bottomRight: Radius.circular(16.0))
                ),
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    behavior: SnackBarBehavior.floating,
                    content: Text('Разраб не сделал рабочую кнопку! Пнуть разраба можно в телеграм @thevladoss'),
                  ));
                },
                child: ListTile(
                  title: Text('Обратная связь', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500)),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

}