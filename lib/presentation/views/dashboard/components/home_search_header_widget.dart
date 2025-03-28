import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:moniepoint_estate_app/presentation/styles/app_color_extension.dart';
import 'package:moniepoint_estate_app/utils/custom_margin.dart';
import 'package:moniepoint_estate_app/utils/extension.dart';



class HomeSearchHeaderWidget extends StatefulWidget {
  const HomeSearchHeaderWidget({super.key});

  @override
  State<HomeSearchHeaderWidget> createState() => _HomeSearchHeaderWidgetState();
}

class _HomeSearchHeaderWidgetState extends State<HomeSearchHeaderWidget> {

  TextEditingController mapSearchTextController =
      TextEditingController(text: "Saint Petersburg");
  
  @override
  void dispose() {

    mapSearchTextController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appColorExtension = Theme.of(context).extension<AppColorExtension>()!;

    return Container(
      margin: EdgeInsets.only(
        top: 10.h,
        left: 20.w,
        right: 20.w,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 4.h,
                horizontal: 15.w,
              ),
              decoration: BoxDecoration(
                color: appColorExtension.backgroundWhite,
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset("ic_search_outline".svg)
                      .animate(
                        delay: const Duration(seconds: 1),
                      )
                      .fadeIn(),
                  const XMargin(6),
                  Expanded(
                    child: TextFormField(
                      controller: mapSearchTextController,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        height: 1.0,
                      ),
                      textAlign: TextAlign.left,
                      decoration: const InputDecoration(
                        fillColor: Colors.transparent,
                        filled: true,
                        contentPadding: EdgeInsets.zero,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ).animate().fadeIn().scale(
                  duration: const Duration(milliseconds: 800),
                  curve: Curves.easeIn,
                ),
          ),
          const XMargin(20),
          Container(
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: appColorExtension.backgroundWhite,
            ),
            child: SvgPicture.asset(
              "ic_filter".svg,
              fit: BoxFit.scaleDown,
            ),
          ).animate().scale(
                duration: const Duration(milliseconds: 800),
                curve: Curves.easeIn,
              ),
        ],
      ),
    );
  }
}
