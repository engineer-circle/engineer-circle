import 'package:engineer_circle/feature/drawer/drawer.dart';
import 'package:engineer_circle/feature/profile/ui/component/profile.dart';
import 'package:engineer_circle/global/url_launcher.dart';
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
      body: Profile(
        profileData: profileData,
        onTwitterPressed: (url) async {
          await ref.read(urlLauncherProvider).launch(url);
        },
        onMusubitePressed: (url) async {
          await ref.read(urlLauncherProvider).launch(url);
        },
      ),
    );
  }
}
