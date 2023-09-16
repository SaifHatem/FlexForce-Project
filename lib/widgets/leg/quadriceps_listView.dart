import 'package:flex_force/classes/muscle_class.dart';
import 'package:flex_force/widgets/custom_muscle.dart';
import 'package:flutter/material.dart';

class QuadricepsListview extends StatelessWidget {
  const QuadricepsListview({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MuscleCategory> muscles = [
      MuscleCategory(
        muscleTextColor: Colors.red,
        muscleTextA: 'دفع افقي بالقدم',
        muscleTextE: 'Horizontal leg press',
        muscleImage: 'images/leg/frontLeg/Horizontal-Leg-Press.gif',
        muscleDescriotion: ' * القدم متوازية\n * وسع القدم يساوي وسع الكتف\n ',
      ),
      MuscleCategory(
        muscleTextColor: Colors.red,
        muscleTextA: 'دفع بالقدم',
        muscleTextE: 'Leg press',
        muscleImage: 'images/leg/frontLeg/Leg-Press .gif',
        muscleDescriotion:
            ' * القدم متوازية\n * وسع القدم يساوي وسع الكتف\n * النزول حتي تلمس الفخذة جزعك',
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
