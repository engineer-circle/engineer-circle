import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:engineer_circle/app/router/app_router.dart';
import 'package:engineer_circle/feature/profile/controller/profile_form_contoroller.dart';
import 'package:engineer_circle/feature/profile/statte/profile_form_state.dart';
import 'package:engineer_circle/feature/profile/statte/profile_form_state_notifier.dart';
import 'package:engineer_circle/feature/profile/ui/component/edit_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class ProfileFormPage extends ConsumerStatefulWidget {
  const ProfileFormPage({
    super.key,
    required this.isEdit,
  });

  final bool isEdit;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProfileFormPageState();
}

class _ProfileFormPageState extends ConsumerState<ProfileFormPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _skillController = TextEditingController();

  @override
  void initState() {
    /// 画面表示後に実行
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(profileFormProvider).initProfileForm(widget.isEdit);
    });
    super.initState();
  }

  @override
  void dispose() {
    _skillController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(profileFormStateProvider);
    return GestureDetector(
      onTap: () {
        // キーボードが表示されている場合、フォーカスを外してキーボードを閉じる
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('プロフィール')),
        body: _body(state),
      ),
    );
  }

  Widget _body(ProfileFormState profileFormState) {
    switch (profileFormState) {
      case ProfileFormStateLoading _:
        return Center(
          child: CircularProgressIndicator(
            color: Theme.of(context).colorScheme.primary,
          ),
        );

      case ProfileFormStateSuccess state:
        return Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Center(
                child: EditAvatar(
                  draftAvatarUrl: state.draftProfile.avatarUrl,
                  isLocalFilePath: state.draftProfile.avatarUrl !=
                      state.initialProfile?.avatarUrl,
                  onImageSelected: (filePath) => ref
                      .read(profileFormStateProvider.notifier)
                      .updateProfile(avatarUrl: filePath),
                ),
              ),
              TextFormField(
                initialValue: state.initialProfile?.name,
                decoration: const InputDecoration(labelText: '名前'),
                validator: (value) => value!.isEmpty ? '名前は必須です' : null,
                onChanged: (value) => ref
                    .read(profileFormStateProvider.notifier)
                    .updateProfile(name: value),
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 8,
                children: state.draftProfile.skills
                    .mapIndexed(
                      (index, skill) => Chip(
                        label: Text(skill),
                        labelPadding: const EdgeInsets.all(2),
                        onDeleted: () => ref
                            .read(profileFormStateProvider.notifier)
                            .deleteSkill(index),
                        deleteIcon: const Icon(Icons.cancel),
                      ),
                    )
                    .toList(),
              ),
              TextFormField(
                controller: _skillController,
                decoration: InputDecoration(
                  labelText: 'スキル',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      if (_skillController.text.isNotEmpty) {
                        ref
                            .read(profileFormStateProvider.notifier)
                            .addSkill(_skillController.text);
                        // 入力文字をクリア
                        _skillController.clear();
                      }
                    },
                  ),
                ),
                validator: (_) =>
                    state.draftProfile.skills.isEmpty ? 'スキルは必須です' : null,
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField(
                decoration: const InputDecoration(labelText: 'キャリア'),
                items: CareerOption.values.map((CareerOption value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value.displayName),
                  );
                }).toList(),
                onChanged: (CareerOption? newValue) => ref
                    .read(profileFormStateProvider.notifier)
                    .updateProfile(career: newValue),
                value: state.draftProfile.career,
                validator: (value) => value == null ? 'キャリアを選択してください' : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                initialValue: state.initialProfile?.twitterLink,
                decoration: const InputDecoration(labelText: 'X (Twitter)'),
                onChanged: (value) => ref
                    .read(profileFormStateProvider.notifier)
                    .updateProfile(twitterLink: value),
              ),
              const SizedBox(height: 16),
              TextFormField(
                initialValue: state.initialProfile?.musubiteLink,
                decoration: const InputDecoration(labelText: 'Musubite'),
                onChanged: (value) => ref
                    .read(profileFormStateProvider.notifier)
                    .updateProfile(muskieLink: value),
              ),
              const SizedBox(height: 16),
              TextFormField(
                initialValue: state.initialProfile?.selfIntroduction,
                maxLines: 10,
                minLines: 1,
                decoration: const InputDecoration(labelText: '自己紹介'),
                validator: (value) => value!.isEmpty ? '自己紹介は必須です' : null,
                onChanged: (value) => ref
                    .read(profileFormStateProvider.notifier)
                    .updateProfile(selfIntroduction: value),
              ),
              const SizedBox(height: 24),
              FilledButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // TODO: 更新・保存処理
                    context.router.replaceAll(
                      [const ProfileRoute()],
                    );
                  }
                },
                child: Text(
                  widget.isEdit ? '更新' : '保存',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        );
    }
  }
}
