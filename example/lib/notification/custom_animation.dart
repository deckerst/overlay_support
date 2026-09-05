import 'package:material_ui/material_ui.dart';
import 'package:overlay_support_example/notification/ios_toast.dart';

/// Example to show how to popup overlay with custom animation.
class CustomAnimationToast extends StatelessWidget {
  final double value;

  static final Tween<Offset> tweenOffset =
      Tween<Offset>(begin: Offset(0, 40), end: Offset(0, 0));

  static final Tween<double> tweenOpacity = Tween<double>(begin: 0, end: 1);

  const CustomAnimationToast({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: tweenOffset.transform(value),
      child: Opacity(
        opacity: tweenOpacity.transform(value),
        child: IosStyleToast(),
      ),
    );
  }
}
