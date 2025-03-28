import 'package:flutter/material.dart';
import 'package:moniepoint_estate_app/presentation/styles/app_color_extension.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    final appColorExtension = Theme.of(context).extension<AppColorExtension>()!;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            appColorExtension.bacgroundWhite2,
            appColorExtension.backgroundPrimary.withOpacity(0.3),
          ],
          stops: const [0.3, 1],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}
