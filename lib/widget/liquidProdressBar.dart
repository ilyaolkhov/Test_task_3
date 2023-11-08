import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';
import 'package:test_task/theme/theme.dart';

class LiquiProgressBar extends StatefulWidget {
  const LiquiProgressBar({super.key});

  @override
  State<LiquiProgressBar> createState() => _LiquiProgressBarState();
}

class _LiquiProgressBarState extends State<LiquiProgressBar>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late AnimationController animationController;
  late double valueDownloads;
  bool startAnimation = false;

  @override
  void initState() {
    valueDownloads = 80;
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    animationController.addListener(() {
      setState(
        () {},
      );
    });
    animation = IntTween(begin: 0, end: valueDownloads.toInt()).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeInCirc));
    startAnim();
    super.initState();
  }

  Future startAnim() async {
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      animationController.forward();
      startAnimation = !startAnimation;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0x0A005AA8),
          blurRadius: 4,
          offset: Offset(0, 2),
        ),
      ]),
      height: 160,
      width: 160,
      child: LiquidLinearProgressIndicator(
        borderRadius: 4,
        backgroundColor: Colors.white,
        valueColor: AlwaysStoppedAnimation(tmnBlue.withOpacity(0.48)),
        value: animation.value / 100,
        borderColor: Colors.transparent,
        borderWidth: 0.0,
        direction: Axis.vertical,
        center: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${animation.value.toString()}%',
                style: const TextStyle(
                    fontSize: 40, fontWeight: FontWeight.w700, color: darkGrey),
              ),
              const Text(
                'Текущий уровень загрузки',
                style: TextStyle(
                    color: darkGrey, fontWeight: FontWeight.w500, fontSize: 14),
              )
            ],
          ),
        ),
      ),
    );
  }
}
