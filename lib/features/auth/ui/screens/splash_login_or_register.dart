import 'package:customer_request_task/core/helper/extensions.dart';
import 'package:customer_request_task/core/helper/spacing.dart';
import 'package:customer_request_task/core/router/routes_string.dart';
import 'package:customer_request_task/core/theme/color_manager.dart';
import 'package:customer_request_task/core/widgets/custom_elevated_button_app.dart.dart';
import 'package:customer_request_task/features/auth/ui/widgets/auth_logo.dart';
import 'package:customer_request_task/features/auth/ui/widgets/auth_titles.dart';
import 'package:flutter/material.dart';

class SplashLoginOrRegister extends StatelessWidget {
  const SplashLoginOrRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AuthLogo(), verticalSpace(20), const AuthTitle(),
            verticalSpace(40),
            CustomElevatedButtonApp(
              color: ColorManager.teal,
              text: 'تسجيل الدخول',
              onPressed: () {
                context.pushNamed(RoutesString.login);
              },
            ),
            const SizedBox(height: 20),
            // زر تسجيل المؤسسة
            CustomElevatedButtonApp(
              color: ColorManager.teal,
              text: 'تسجيل المؤسسة',
              onPressed: () {
                context.pushNamed(RoutesString.registerScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
