import 'package:flex_force/classes/muscle_class.dart';
import 'package:flex_force/widgets/custom_muscle.dart';
import 'package:flutter/material.dart';

class SmallerBackListview extends StatelessWidget {
  const SmallerBackListview({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MuscleCategory> muscles = [
      MuscleCategory(
        muscleTextColor: Colors.red,
        muscleTextA: 'سحب أرضي ضيق',
        muscleTextE: 'Seated cable row',
        muscleImage: 'images/back/small/sahb_ardi-diq.png',
        muscleDescriotion:
            ' * ثني القدم بدرجة بسيطة\n * ميل جزعك للأمام اثناء العودة\n * ضم لوحين الكتف معا اثناء السحب\n ',
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
