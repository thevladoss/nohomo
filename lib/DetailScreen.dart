import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String img;
  final String title;
  final String range;
  final bool alcohol;
  final String age;
  final String desc;
  final String fullDesc;
  final List<String> tags;

  const DetailScreen({Key? key, required this.img, required this.title, required this.range, required this.alcohol, required this.age, required this.desc, required this.fullDesc, required this.tags}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title, style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),),
      ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            ClipRRect(
                child: Image.network(img, fit: BoxFit.fitWidth,),
                borderRadius: BorderRadius.all(Radius.circular(16.0))
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.location_on, size: 20, color: Colors.black.withOpacity(0.7),),
                      SizedBox(width: 4.0,),
                      Text(range + ' от вас', style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 16.0, fontWeight: FontWeight.w500),)
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.wine_bar, size: 20, color: Colors.black.withOpacity(0.7),),
                      SizedBox(width: 4.0,),
                      Text((alcohol) ? 'Алкоголь будет' : 'Без алкоголя', style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 16.0, fontWeight: FontWeight.w500),)
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.group, size: 20, color: Colors.black.withOpacity(0.7),),
                      SizedBox(width: 4.0,),
                      Text(age + ' лет', style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 16.0, fontWeight: FontWeight.w500),)
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(fullDesc, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),),
                  SizedBox(
                    height: 4.0,
                  ),
                  Row(
                    children: tags.map((element) =>
                        Row(
                          children: [
                            Chip(
                              label: Text('#' + element),
                            ),
                            SizedBox(
                              width: 4.0,
                            )
                          ],
                        ),
                    ).toList(),
                  ),
                ],
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    behavior: SnackBarBehavior.floating,
                    content: Text('Разраб не сделал рабочую кнопку! Пнуть разраба можно в телеграм @thevladoss'),
                  ));
                },
                child: Text('Принять участие', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),)
            )
          ],
        )
    );
  }

}