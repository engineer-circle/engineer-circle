import 'package:engineer_circle/feature/drawer/drawer.dart';
import 'package:engineer_circle/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfileState();
}

// ダミーのプロファイルデータプロバイダ
final profileDataProvider = Provider<ProfileData>((ref) {
  return ProfileData(
    name: 'kuwa',
    twitterLink: 'https://twitter.com/kilalabu',
    musubiteLink: 'https://musubite-job.com',
    bio: 'エンジニア4年目です。\nよろしくお願いします！',
    career: '副業を探している',
    skills: ['Android', 'Flutter'],
    avatarUrl:
        "https://lh3.googleusercontent.com/a/ACg8ocLEtQvFJ-FBYsPcdzNrSebBlKXfdySdQdEKmIBbcNwyAWU=s288-c-no",
  );
});

class ProfileData {
  final String name;
  final String? avatarUrl;
  final List<String> skills;
  final String career;
  final String bio;
  final String? twitterLink;
  final String? musubiteLink;

  ProfileData({
    required this.name,
    this.avatarUrl,
    required this.skills,
    required this.career,
    required this.bio,
    this.twitterLink,
    this.musubiteLink,
  });
}

class _ProfileState extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final profileData = ref.watch(profileDataProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('プロフィール'),
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
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
                profileData.name,
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
                      color:
                          profileData.twitterLink != null ? null : Colors.grey,
                    ),
                    onPressed: profileData.twitterLink != null
                        ? () {
                            // TODO: twitter 開く
                          }
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
                        ? () {
                            // TODO: musubite 開く
                          }
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
                subtitle: Text(profileData.career),
              ),
              const Divider(),
              ListTile(
                title: const Text('自己紹介'),
                subtitle: Text(profileData.bio),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
