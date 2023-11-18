import 'package:engineer_circle/feature/profile/ui/profile_page.dart';
import 'package:engineer_circle/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
    required this.profileData,
    required this.onTwitterPressed,
    required this.onMusubitePressed,
  }) : super(key: key);

  final ProfileData profileData;
  final Function(String url) onTwitterPressed;
  final Function(String url) onMusubitePressed;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            profileData.avatarUrl != null
                ? CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(profileData.avatarUrl!),
                  )
                : const Icon(Icons.account_circle, size: 100),
            const SizedBox(height: 8),
            Text(
              profileData.name != null ? profileData.name! : "",
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
                    color: profileData.twitterLink != null ? null : Colors.grey,
                  ),
                  onPressed: profileData.twitterLink != null
                      ? () => onTwitterPressed(profileData.twitterLink!)
                      : null,
                ),
                const SizedBox(width: 16),
                IconButton(
                  icon: Image.asset(
                    Assets.images.musubiteLogo.path,
                    width: 28,
                    height: 28,
                    color:
                        profileData.musubiteLink != null ? null : Colors.grey,
                  ),
                  onPressed: profileData.musubiteLink != null
                      ? () => onMusubitePressed(profileData.musubiteLink!)
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
                children: profileData.skills
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
                profileData.career != null ? profileData.career! : "",
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text('自己紹介'),
              subtitle: Text(
                profileData.bio != null ? profileData.bio! : "",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
