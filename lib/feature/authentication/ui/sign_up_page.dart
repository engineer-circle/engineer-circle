import 'package:auto_route/auto_route.dart';
import 'package:engineer_circle/feature/authentication/ui/component/terms_agreement_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
              ElevatedButton.icon(
                onPressed: () {
                  // Appleでサインインする処理
                },
                icon: const Icon(Icons.apple),
                label: const Text('Sign up with Apple'),
              ),
              const SizedBox(height: 8),
              ElevatedButton.icon(
                onPressed: () {
                  // Googleでサインインする処理
                },
                icon: const Icon(Icons.email),
                label: const Text('Sign up with Google'),
              ),
              const SizedBox(height: 12),
              TermsAgreementText(
                onTapTermsOfUse: () {
                  // TODO: 利用規約を開く
                },
                onTapPrivacyPolicy: () {
                  // TODO: プラポリを開く
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
