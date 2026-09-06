import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/utill/asset_path.dart';

class sceen_background extends StatelessWidget {
  const sceen_background({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        SvgPicture.asset(AssetPath.background, fit: BoxFit.cover),

        child,
      ],
    );
  }
}
