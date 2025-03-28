import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moniepoint_estate_app/presentation/styles/app_color_extension.dart';
import 'package:moniepoint_estate_app/presentation/styles/custom_style.dart';
import 'package:moniepoint_estate_app/utils/custom_margin.dart';
import 'package:moniepoint_estate_app/utils/extension.dart';

class VariantListWidget extends StatelessWidget {
  const VariantListWidget({
    super.key,
    required this.iconUrl,
    required this.iconUrlSelected,
    required this.title,
    required this.isActive,
    required this.onTap,
  });

  final String iconUrlSelected;
  final String iconUrl;
  final String title;
  final bool isActive;

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final appColorExtension = Theme.of(context).extension<AppColorExtension>()!;

    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10.h,
        horizontal: 10.w,
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              isActive ? iconUrlSelected.svg : iconUrl.svg,
              fit: BoxFit.scaleDown,
            ),
            const XMargin(10),
            Text(
              title,
              style: CustomStyle.customStyle.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
                color: !isActive
                    ? appColorExtension.textTertiary
                    : appColorExtension.textBrand,
              ),
            ),
          ],
        ),
      ).noShadow,
    );
  }
}
