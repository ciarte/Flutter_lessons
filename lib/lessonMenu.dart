
import 'package:flutter/material.dart';
import 'package:super_jumper/routes.dart';

class LessonMenu extends StatelessWidget{
  const LessonMenu({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: null,
      body: Center(
        child: SizedBox(
          width: 350,
          child: ListView(
            children: const [
              SizedBox(
                height: 32,),
                  ButtonItem(
                    title: 'Lesson 1, crear un Body',
                    route: Routes.lesson01,
                  ),
              ButtonItem(
                title: 'Lesson 2, tipos de Body(static, dynamic & kinematic',
                route: Routes.lesson02,
              ),
              ButtonItem(
                title: 'Lesson 3, friction, density, restoration',
                route: Routes.lesson03,
              ),
              ButtonItem(
                title: 'Lesson 4, fuerzas, lineal, velocidad',
                route: Routes.lesson04,
              ),
              ButtonItem(
                title: 'Lesson 5, Sprites',
                route: Routes.lesson05,
              ),
              ButtonItem(
                title: 'Lesson 6, Colisiones',
                route: Routes.lesson06,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class ButtonItem extends StatelessWidget{
  final String title;
  final String route;

  const ButtonItem({
    super.key,
    required this.title,
    required this.route,
});

  @override
  Widget build(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
            onPressed: (){
              Navigator.of(context).pushNamed(route);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title),
            )
        ),
      ],
    );
  }

}