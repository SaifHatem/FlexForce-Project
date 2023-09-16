import 'package:flex_force/screens/back/general.dart';
import 'package:flex_force/screens/back/katania.dart';
import 'package:flex_force/screens/back/magns.dart';
import 'package:flex_force/screens/back/roteto.dart';
import 'package:flex_force/screens/back/smallerback.dart';
import 'package:flex_force/screens/back/trabees.dart';
import 'package:flex_force/screens/bench/lowBench.dart';
import 'package:flex_force/screens/bench/middleBench.dart';
import 'package:flex_force/screens/bench/upperBench.dart';
import 'package:flex_force/screens/bicebs/breciales.dart';
import 'package:flex_force/screens/bicebs/longhead.dart';
import 'package:flex_force/screens/bicebs/shorthead.dart';
import 'package:flex_force/screens/home_view.dart';
import 'package:flex_force/screens/leg/claves.dart';
import 'package:flex_force/screens/leg/hamestring.dart';
import 'package:flex_force/screens/leg/quadriceps.dart';
import 'package:flex_force/screens/shabe_bicebs.dart';
import 'package:flex_force/screens/shape_back.dart';
import 'package:flex_force/screens/shape_bench.dart';
import 'package:flex_force/screens/shape_leg.dart';
import 'package:flex_force/screens/shape_shoulder.dart';
import 'package:flex_force/screens/shape_tricebs.dart';
import 'package:flex_force/screens/shoulder/front.dart';
import 'package:flex_force/screens/shoulder/rear.dart';
import 'package:flex_force/screens/shoulder/side.dart';
import 'package:flex_force/screens/tricebs/literalhead.dart';
import 'package:flex_force/screens/tricebs/longheadtry.dart';
import 'package:flex_force/screens/tricebs/midialhead.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'HomeView': (context) => const HomeView(),
        ShapeBench().benchId: (context) => ShapeBench(),
        UpperBench().upperBenchId: (context) => UpperBench(),
        MiddleBench().middleBenchId: (context) => MiddleBench(),
        LowBench().lowBenchId: (context) => LowBench(),
        ShapeBicebs().bicebsId: (context) => ShapeBicebs(),
        LongheadBicebs().longheadBicebsId: (context) => LongheadBicebs(),
        ShortheadBicebs().shortheadBicebsId: (context) => ShortheadBicebs(),
        BricialesdBicebs().bricialesdBicebsId: (context) => BricialesdBicebs(),
        ShapeTricebs().tricebsId: (context) => ShapeTricebs(),
        LongheadTricebs().longheadTricebsId: (context) => LongheadTricebs(),
        LitralheadTricebs().litralheadTricebsId: (context) =>
            LitralheadTricebs(),
        MidialheadTricebs().midialheadTricebsId: (context) =>
            MidialheadTricebs(),
        ShapeShoulder().shoulderId: (context) => ShapeShoulder(),
        FrontShoulder().frontShoulderId: (context) => FrontShoulder(),
        SideShoulder().sideShoulderId: (context) => SideShoulder(),
        RearShoulder().rearShoulderId: (context) => RearShoulder(),
        ShapeBack().backId: (context) => ShapeBack(),
        TrabeesBack().trabeesBackId: (context) => TrabeesBack(),
        RotatoBack().rotatoBackId: (context) => RotatoBack(),
        MagnsBack().magnsBackId: (context) => MagnsBack(),
        SmallerBack().smallerBackId: (context) => SmallerBack(),
        KataniaBack().kataniaBackId: (context) => KataniaBack(),
        GeneralBack().generalBackId: (context) => GeneralBack(),
        ShapeLeg().legId: (context) => ShapeLeg(),
        QuadricepsLeg().quadricepsLegId: (context) => QuadricepsLeg(),
        HamestringLeg().hamestringLegId: (context) => HamestringLeg(),
        ClavesLeg().clavesLegId: (context) => ClavesLeg(),
      },
      initialRoute: 'HomeView',
    );
  }
}
