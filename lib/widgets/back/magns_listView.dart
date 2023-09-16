import 'package:flex_force/classes/muscle_class.dart';
import 'package:flex_force/widgets/custom_muscle.dart';
import 'package:flutter/material.dart';

class MagnsListview extends StatelessWidget {
  const MagnsListview({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MuscleCategory> muscles = [
      MuscleCategory(
        muscleTextColor: Colors.green,
        muscleTextA: 'مجنص بالبار ع الدكة',
        muscleTextE: 'Chest supported barbell row',
        muscleImage: 'images/back/magns/bar_bench.gif',
        muscleDescriotion:
            ' * عمل الدكة علي زاوية 30 درجة\n * جعل الصدر علي أول الدكة\n * الرأس خارج الدكة \n * ضم لوحين الكتف أثناء الصعود\n * عمل زاوية بين الكوع والجذع \n * عمل زاية بين الكوع والكتف',
      ),
      MuscleCategory(
        muscleTextColor: Colors.green,
        muscleTextA: 'سحب أمامي مسطرة ضيق',
        muscleTextE: 'ٌReverse pull down',
        muscleImage: 'images/back/magns/lat_pull_down_narrow_mastara.gif',
        muscleDescriotion:
            ' * التحكم في الوزن أثناء الصعود\n * ضم لوحين الأكتاف معا أثناء النزول\n * عمل قوس بسيط بالضهر\n * الكوع أمام الكتف وليس في نفس مستواه \n * تنزل بالدامبل علي أعلي الصدر \n ',
      ),
      MuscleCategory(
        muscleTextColor: Colors.green,
        muscleTextA: 'سحب أمامي بالمقبض',
        muscleTextE: 'V-Grap lat pulldown',
        muscleImage: 'images/back/magns/lat_pull_down_narrow.gif',
        muscleDescriotion:
            ' * التحكم في الوزن أثناء الصعود\n * ضم لوحين الأكتاف معا أثناء النزول\n * عمل قوس بسيط بالضهر\n * الكوع أمام الكتف وليس في نفس مستواه \n * تنزل بالدامبل علي أعلي الصدر \n ',
      ),
      MuscleCategory(
        muscleTextColor: Colors.green,
        muscleTextA: 'سحب أمامي مسطرة واسع',
        muscleTextE: 'Lat pull down',
        muscleImage: 'images/back/magns/latpulldownfront.gif',
        muscleDescriotion:
            ' * التحكم في الوزن أثناء الصعود\n * ضم لوحين الأكتاف معا أثناء النزول\n * عمل قوس بسيط بالضهر\n * الكوع أمام الكتف وليس في نفس مستواه \n * تنزل بالدامبل علي أعلي الصدر \n ',
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
