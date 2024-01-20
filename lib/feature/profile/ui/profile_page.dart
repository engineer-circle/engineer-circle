import 'package:engineer_circle/app/router/app_router.dart';
import 'package:engineer_circle/feature/drawer/drawer.dart';
import 'package:engineer_circle/feature/profile/controller/profile_controller.dart';
import 'package:engineer_circle/feature/profile/state/profile_state.dart';
import 'package:engineer_circle/feature/profile/state/profile_state_notifier.dart';
import 'package:engineer_circle/feature/profile/ui/component/profile_content.dart';
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

class _ProfileState extends ConsumerState<ProfilePage> {
  @override
  void initState() {
    /// 画面表示後に実行
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(profileProvider).init();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(profileStateProvider);
    return Scaffold(
        appBar: AppBar(
          actions: state is ProfileStateSuccess && state.isRegisteredProfile
              ? [
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: InkWell(
                      onTap: () => context.router.push(
                        ProfileFormRoute(
                          initialProfile: state.user,
                          isEdit: true,
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.edit),
                      ),
                    ),
                  )
                ]
              : [],
        ),
        drawer: const AppDrawer(),
        body: _body(state));
  }

  Widget _body(ProfileState profileState) {
    switch (profileState) {
      case ProfileStateLoading _:
        return Center(
          child: CircularProgressIndicator(
            color: Theme.of(context).colorScheme.primary,
          ),
        );

      case ProfileStateFailure _:
        return const Center(
          child: Text('プロフィール情報の取得に失敗しました'),
        );

      case ProfileStateSuccess state:
        final profile = state.user;
        return state.isRegisteredProfile
            ? ProfileContent(
                profile: profile,
                onTwitterPressed: (url) async {
                  await ref.read(urlLauncherProvider).launch(url);
                },
                onMusubitePressed: (url) async {
                  await ref.read(urlLauncherProvider).launch(url);
                },
              )
            : Center(
                child: FilledButton(
                  onPressed: () => context.router.push(
                    ProfileFormRoute(initialProfile: state.user, isEdit: false),
                  ),
                  child: const Text(
                    'プロフィールを登録しましょう',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              );
    }
  }
}
