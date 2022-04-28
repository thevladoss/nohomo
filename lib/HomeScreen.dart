import 'package:NoHome/DetailScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return StackedCardCarousel(
              type: StackedCardCarouselType.fadeOutStack,
              spaceBetweenItems: constraints.maxHeight-20,
              initialOffset: 8,
              items: [
                card(constraints.maxHeight, context, img: 'https://sun9-4.userapi.com/s/v1/if2/XIz1wnsE7C8GoxOmW9faVgsaOwo3FymIxwbvgdhgh9inW-uPsWlmW1wQoEuWbPyWT9Lz3EWaUYTHhA01dXHvJQWN.jpg?size=508x362&quality=95&type=album', title: 'День рождения', range: '1 км', alcohol: true, age: '30-50', desc: 'Короче празднуем мое др, собрались подружаньками затусить. Ищем взрослых мужиков, желательно 40+, если богатенькие ваще кайф. Всех ждем!', fullDesc: 'Короче празднуем мое др, собрались подружаньками затусить. Ищем взрослых мужиков, желательно 40+, если богатенькие ваще кайф. Всех ждем!', tags: ['вино', 'аниме', 'рок', 'топлесс']),
                card(constraints.maxHeight, context, img: 'https://sun9-86.userapi.com/s/v1/if2/BYS-5muL6WRamf7Mls1gtkSQHgzW8ZNq8WDi-m5M0tkG0Rs-C4ZAmy-dkxLHA7f6ry1Ab9LgWoIF4lHal8ZBKvdA.jpg?size=512x512&quality=96&type=album', title: 'Деловая игра', range: '2,1 км', alcohol: false, age: '18+', desc: 'Привет любителям деловых игр! Мы представляем вам нашу игру, направленную на развитие коммуникационных навыков и умения принимать решения. ', fullDesc: '«Взаперти» \nПривет любителям деловых игр! Мы представляем вам нашу игру, направленную на развитие коммуникационных навыков и умения принимать решения. Представьте, что ваша команда оказалась запертой в офисе. Все двери заблокированы, ломать их или выбивать окна нельзя. За 30 минут участники команды должны выбрать 10 обычных предметов из вашего офиса, которые необходимы им для выживания, и расположить их по степени значимости. ', tags: ['вино', 'аниме', 'рок', 'топлесс']),
                card(constraints.maxHeight, context, img: 'https://sun1-88.userapi.com/s/v1/if2/laah5QF2c5mhYPyUMg7z_tmGYNErjlmUZwgErTW_X52O7IPPICanVb_woF1Ny8Ld2tXSquhdfEJwR8UTscd9_8Zo.jpg?size=747x1200&quality=95&type=album', title: 'Клуб любителей марксизма', range: '5 км', alcohol: false, age: '18+', desc: 'Мечтаешь о классовой борьбе и видишь Маркса во снах? Тогда наша встреча для тебя!', fullDesc: 'Мечтаешь о классовой борьбе и видишь Маркса во снах? Тогда наша встреча для тебя!\nТебя ждёт:\n-обсуждение одного из лучших трудов человечества\n-изучение классиков марксизма\n-погружение в атмосферу социализма\n-чаепитие с единомышленниками\nМы ждём тебя! Именно тебя!', tags: ['Маркс', 'классоваяборьба']),
                // card(constraints.maxHeight, img: 'https://sun9-4.userapi.com/s/v1/if2/XIz1wnsE7C8GoxOmW9faVgsaOwo3FymIxwbvgdhgh9inW-uPsWlmW1wQoEuWbPyWT9Lz3EWaUYTHhA01dXHvJQWN.jpg?size=508x362&quality=95&type=album', title: 'День рождения', range: '1 км', alcohol: true, age: '30-50', desc: 'Короче празднуем мое др, собрались подружаньками затусить. Ищем взрослых мужиков, желательно 40+, если богатенькие ваще кайф. Всех ждем!', tags: ['вино', 'аниме', 'рок', 'топлесс']),
              ]
          );
        }
    );
  }

  Widget card(double height, BuildContext context, {required String img, required String title, required String range, required bool alcohol, required String age, required String desc, required String fullDesc, required List<String> tags}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),

        child: InkWell(
          onTap: () {
            Navigator.push(context, CupertinoDialogRoute(
              builder: (context) => DetailScreen(img: img, title: title, range: range, alcohol: alcohol, age: age, desc: desc, fullDesc: fullDesc, tags: tags,), context: context,
            ));
          },
          borderRadius: BorderRadius.circular(16.0),
          child: Container(
            width: double.infinity,
            height: height-36,
            child: Column(
              children: <Widget>[
                Expanded(child: ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
                  child: Image.network(img, fit: BoxFit.fitHeight,),
                )),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16.0),
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
                      Text(desc, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}