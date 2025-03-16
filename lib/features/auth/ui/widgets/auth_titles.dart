import 'package:customer_request_task/core/theme/styles_manager.dart';
import 'package:flutter/material.dart';

class AuthTitle extends StatelessWidget {
  const AuthTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'إدارة مبيعاتك بكفاءة عالية',
          style: TextStylesManager.font30BlueBold,
        ),
        Text(
          'إدارة فعالة',
          textAlign: TextAlign.center,
          style: TextStylesManager.font30OrangeRegular,
        ),
        Text(
          'بجودة وطنية عالية',
          textAlign: TextAlign.center,
          style: TextStylesManager.font25TealRegular,
        ),
      ],
    );
  }
}
