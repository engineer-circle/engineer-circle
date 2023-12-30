import 'package:auto_route/auto_route.dart';
import 'package:engineer_circle/app/router/app_router.dart';
import 'package:engineer_circle/feature/authentication/controller/authentication_controller.dart';
import 'package:engineer_circle/feature/authentication/ui/showcase.dart';
import 'package:engineer_circle/global/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:showcaseview/showcaseview.dart';
import 'package:sign_in_button/sign_in_button.dart';

@RoutePage()
class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginState();
}

class _LoginState extends ConsumerState<LoginPage> {
  final GlobalKey _one = GlobalKey();
  final GlobalKey _two = GlobalKey();

  @override
  void initState() {
    startShowCase();
    super.initState();
  }

  startShowCase() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ShowCaseWidget.of(context).startShowCase([
        _one,
        _two,
      ]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ログイン'),
      ),
      body: ShowCaseWidget(
        onStart: (index, key) {
          logger.i('onStart: $index, $key');
        },
        onComplete: (index, key) {
          logger.i('onComplete: $index, $key');
          if (index == 4) {
            SystemChrome.setSystemUIOverlayStyle(
              SystemUiOverlayStyle.light.copyWith(
                statusBarIconBrightness: Brightness.dark,
                statusBarColor: Colors.white,
              ),
            );
          }
        },
        blurValue: 1,
        builder: Builder(builder: (context) => const MailPage()),
        autoPlayDelay: const Duration(seconds: 3),
      ),
    );
  }

  Widget _body() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Showcase(
              key: _one,
              title: 'Apple',
              description: 'Apple詳細',
              child: SizedBox(
                height: 60,
                child: SignInButton(
                  Buttons.apple,
                  text: "Appleでログイン",
                  onPressed: () {
                    // Appleでサインインする処理
                  },
                ),
              ),
            ),
            const SizedBox(height: 16),
            Showcase(
              key: _two,
              title: 'Google',
              description: 'Google詳細',
              child: SizedBox(
                height: 60,
                child: SignInButton(
                  Buttons.google,
                  text: "Googleでログイン",
                  onPressed: () {
                    ref.read(authProvider).googleSignIn();
                  },
                ),
              ),
            ),
            const SizedBox(height: 12),
            TextButton(
              onPressed: () => context.router.push(const SignUpRoute()),
              child: const Text('ご登録がまだの方はこちら'),
            ),
          ],
        ),
      ),
    );
  }
}
