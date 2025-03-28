import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moniepoint_estate_app/presentation/styles/app_color_extension.dart';
import 'package:moniepoint_estate_app/presentation/views/dashboard/components/round_option_widget.dart';

class BottomNavWidget extends StatefulWidget {
  const BottomNavWidget({
    super.key,
    required this.isSelected,
    required this.activeIconUrl,
    required this.inactiveIconUrl,
    required this.onTap,
  });

  final bool isSelected;
  final String activeIconUrl;
  final String inactiveIconUrl;

  final Function() onTap;

  @override
  State<BottomNavWidget> createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {

  bool isAnimationCompleted = true;

  @override
  Widget build(BuildContext context) {
    final appColorExtension = Theme.of(context).extension<AppColorExtension>()!;

    return AnimatedContainer(
      margin: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        color: widget.isSelected && isAnimationCompleted
            ? appColorExtension.backgroundPrimary
            : appColorExtension.backgroundTertiary3,
        shape: BoxShape.circle,
      ),
      duration: const Duration(milliseconds: 500),
      child: RoundOptionWidget(
        backgroundColor: Colors.transparent,
        // awaitAnimationBeforeClick: false,
        height: 46.h,
        width: 46.w,
        isActive: widget.isSelected,
        iconUrl: widget.inactiveIconUrl,
        iconUrlActive: widget.activeIconUrl,
        onTap: (){
          setState(() {
            isAnimationCompleted = false;
          });
          widget.onTap.call();
        },
        animationCompletionEvent: (){
          setState(() {
            isAnimationCompleted = true;
          });
        },
      ),
    );
  }
}
