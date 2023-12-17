import 'package:auto_route/auto_route.dart';
import 'package:engineer_circle/app/router/app_router.dart';
import 'package:engineer_circle/feature/authentication/controller/authentication_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sign_in_button/sign_in_button.dart';

@RoutePage()
class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginState();
}

class _LoginState extends ConsumerState<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ログイン'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 60,
                child: SignInButton(
                  Buttons.apple,
                  text: "Appleでサインイン",
                  onPressed: () {
                    // Appleでサインインする処理
                  },
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 60,
                child: SignInButton(
                  Buttons.google,
                  text: "Googleでサインイン",
                  onPressed: () {
                    ref.read(authProvider).googleSignIn();
                  },
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
      ),
    );
  }
}
