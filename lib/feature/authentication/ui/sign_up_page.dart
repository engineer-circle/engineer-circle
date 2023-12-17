import 'package:auto_route/auto_route.dart';
import 'package:engineer_circle/feature/authentication/controller/authentication_controller.dart';
import 'package:engineer_circle/feature/authentication/ui/component/terms_agreement_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sign_in_button/sign_in_button.dart';

@RoutePage()
class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpState();
}

class _SignUpState extends ConsumerState<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('新規登録'),
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
                  text: "Appleで登録",
                  onPressed: () {
                    // Appleでサインアップする処理
                  },
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 60,
                child: SignInButton(
                  Buttons.google,
                  text: "Googleで登録",
                  onPressed: () {
                    ref.read(authProvider).googleSignUp();
                  },
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TermsAgreementText(
                  onTapTermsOfUse: () {
                    // TODO: 利用規約を開く
                  },
                  onTapPrivacyPolicy: () {
                    // TODO: プラポリを開く
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
