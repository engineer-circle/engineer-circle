import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditAvatar extends StatelessWidget {
  const EditAvatar({
    Key? key,
    required this.draftAvatarUrl,
    required this.isLocalFilePath,
    required this.onImageSelected,
  }) : super(key: key);

  final String? draftAvatarUrl;
  final bool isLocalFilePath;
  final Function(File file) onImageSelected;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        _avatarIcon(draftAvatarUrl, isLocalFilePath),
        InkWell(
          onTap: () => _selectImage(context),
          child: _imagePickerIcon(),
        ),
      ],
    );
  }

  Widget _avatarIcon(
    String? draftAvatarUrl,
    bool isLocalFilePath,
  ) {
    if (draftAvatarUrl == null) {
      // デフォルトアイコン
      return const Icon(Icons.account_circle, size: 100);
    }

    return CircleAvatar(
      radius: 50,
      child: ClipOval(
        child: isLocalFilePath
            // デバイスのローカルストレージから取得した場合
            ? Image.file(
                File(draftAvatarUrl),
                fit: BoxFit.cover,
                width: 100, // CircleAvatarの直径に合わせて調整
                height: 100,
              )
            // Remoteから取得した場合
            : Image.network(
                draftAvatarUrl,
                fit: BoxFit.cover,
                width: 100, // CircleAvatarの直径に合わせて調整
                height: 100,
              ),
      ),
    );
  }

  // 添付マークのアイコン
  Widget _imagePickerIcon() {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: Colors.white, // アイコンの背景色
        shape: BoxShape.circle,
      ),
      child: const Icon(Icons.image, size: 24),
    );
  }

  Future<void> _selectImage(BuildContext context) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      onImageSelected(File(pickedFile.path));
    }
  }
}
