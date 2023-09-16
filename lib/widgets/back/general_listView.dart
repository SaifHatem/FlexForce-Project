import 'package:flex_force/classes/muscle_class.dart';
import 'package:flex_force/widgets/custom_muscle.dart';
import 'package:flutter/material.dart';

class GeneralBackListview extends StatelessWidget {
  const GeneralBackListview({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MuscleCategory> muscles = [
      MuscleCategory(
        muscleTextColor: Colors.black,
        muscleTextA: 'التجديف بالبار',
        muscleTextE: 'Barbell bent over row',
        muscleImage: 'images/back/general/sahp_bar.gif',
        muscleDescriotion:
            ' * البار عند مشط القدم\n * القدم والايد بنفس وسع الاكتاف\n * ضم لوحين الكتف أثناء الصعود\n * الصعود بالبار بين الصدر والسرة\n',
      ),
      MuscleCategory(
        muscleTextColor: Colors.black,
        muscleTextA: 'العقلة',
        muscleTextE: 'Incline dumbbell bench press ',
        muscleImage: 'images/back/general/3okla.gif',
        muscleDescriotion: '* إعطاء دفعة لنفسك أثناء الصعود\n ',
      ),
    ];

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: muscles.length,
        (context, index) {
          return CustomMuscle(muscle: muscles[index]);
        },
      ),
    );
  }
}
