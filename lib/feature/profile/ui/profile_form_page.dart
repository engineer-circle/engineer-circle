import 'package:auto_route/auto_route.dart';
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
  String? avatarUrl;
  String? _career;
  List<String> _skills = [];
  String? _twitterLink;
  String? _musubiteLink;
  String? _name;
  String? _bio;

  @override
  void dispose() {
    _skillController.dispose();
    super.dispose();
  }

  final _careerOptions = [
    '副業を探している',
    '転職活動中・転職を考えている',
    '良い人がいれば自社を紹介したい',
    'どちらでもない',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('プロフィール')),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            avatarUrl != null
                ? CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(avatarUrl!),
                  )
                : const Icon(Icons.account_circle, size: 100),
            TextFormField(
              decoration: const InputDecoration(labelText: '名前'),
              validator: (value) => value!.isEmpty ? '名前は必須です' : null,
              onSaved: (value) => _name = value,
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8.0,
              children: _skills
                  .map(
                    (skill) => Chip(
                      label: Text(skill),
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
                      setState(() {
                        // skillsリストに入力文字を追加
                        _skills.add(_skillController.text);
                        // 入力文字をクリア
                        _skillController.clear();
                      });
                    }
                  },
                ),
              ),
              validator: (_) => _skills.isEmpty ? 'スキルは必須です' : null,
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField(
              decoration: const InputDecoration(labelText: 'キャリア'),
              items: _careerOptions.map((String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _career = newValue;
                });
              },
              value: _career,
              validator: (value) => value == null ? 'キャリアを選択してください' : null,
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(labelText: 'X (Twitter)'),
              onSaved: (value) => _twitterLink = value,
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Musubite'),
              onSaved: (value) => _musubiteLink = value,
            ),
            const SizedBox(height: 16),
            TextFormField(
              maxLines: 10,
              minLines: 1,
              decoration: const InputDecoration(labelText: '自己紹介'),
              validator: (value) => value!.isEmpty ? '自己紹介は必須です' : null,
              onSaved: (value) => _bio = value,
            ),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: () {
                print('$_musubiteLink');
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  // TODO: 更新処理
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
      ),
    );
  }
}
