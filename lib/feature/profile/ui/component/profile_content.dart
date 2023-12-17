import 'package:cached_network_image/cached_network_image.dart';
import 'package:engineer_circle/domain/career_option.dart';
import 'package:engineer_circle/domain/user.dart';
import 'package:engineer_circle/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({
    Key? key,
    required this.profile,
    required this.onTwitterPressed,
    required this.onMusubitePressed,
  }) : super(key: key);

  final User profile;
  final Function(String url) onTwitterPressed;
  final Function(String url) onMusubitePressed;

  static const double iconSize = 100;

  bool isNotEmpty(String? value) {
    return (value ?? '').isNotEmpty;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            profile.avatarUrl != null
                ? CircleAvatar(
                    radius: iconSize / 2,
                    child: ClipOval(
                      child: CachedNetworkImage(
                        imageUrl: profile.avatarUrl!,
                        placeholder: (context, url) => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        errorWidget: (context, url, dynamic error) =>
                            const Icon(Icons.error),
                        fit: BoxFit.cover,
                        width: iconSize,
                        height: iconSize,
                      ),
                    ),
                  )
                : Container(
                    width: iconSize,
                    height: iconSize,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: iconSize / 2,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: ClipOval(
                          child: Image.asset(
                            Assets.images.defaultPersonIc.path,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
            const SizedBox(height: 8),
            Text(
              profile.name != null ? profile.name! : "",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset(
                    Assets.images.xLogo.path,
                    width: 24,
                    height: 24,
                    color: isNotEmpty(profile.twitterLink) ? null : Colors.grey,
                  ),
                  onPressed: isNotEmpty(profile.twitterLink)
                      ? () => onTwitterPressed(profile.twitterLink!)
                      : null,
                ),
                const SizedBox(width: 16),
                IconButton(
                  icon: Image.asset(
                    Assets.images.musubiteLogo.path,
                    width: 28,
                    height: 28,
                    color:
                        isNotEmpty(profile.musubiteLink) ? null : Colors.grey,
                  ),
                  onPressed: isNotEmpty(profile.musubiteLink)
                      ? () => onMusubitePressed(profile.musubiteLink!)
                      : null,
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(),
            ListTile(
              title: const Text('スキル'),
              subtitle: Wrap(
                spacing: 8.0,
                children: profile.skills
                    .map(
                      (skill) => Chip(
                        label: Text(skill),
                      ),
                    )
                    .toList(),
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text('キャリア'),
              subtitle: Text(
                profile.career != null ? profile.career!.displayName : "",
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text('自己紹介'),
              subtitle: Text(
                profile.selfIntroduction != null
                    ? profile.selfIntroduction!
                    : "",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
