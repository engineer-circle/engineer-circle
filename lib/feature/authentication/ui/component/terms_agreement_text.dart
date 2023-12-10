import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsAgreementText extends StatelessWidget {
  const TermsAgreementText({
    Key? key,
    required this.onTapTermsOfUse,
    required this.onTapPrivacyPolicy,
  }) : super(key: key);

  final Function onTapTermsOfUse;
  final Function onTapPrivacyPolicy;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          fontSize: 16,
        ),
        children: [
          const TextSpan(text: '利用を開始することで、'),
          TextSpan(
              text: '利用規約',
              style: const TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => onTapTermsOfUse()),
          const TextSpan(text: ' と '),
          TextSpan(
            text: 'プライバシーポリシー',
            style: const TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => onTapPrivacyPolicy(),
          ),
          const TextSpan(text: 'に同意したとみなします'),
        ],
      ),
    );
  }
}
