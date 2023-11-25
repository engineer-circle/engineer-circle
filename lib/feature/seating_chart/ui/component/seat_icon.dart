import 'package:flutter/material.dart';

class SeatIcon extends StatelessWidget {
  const SeatIcon({
    super.key,
    required this.avatarUrl,
    required this.isSeated,
    required this.onSeatSelected,
  });

  final String? avatarUrl;
  final bool isSeated;
  final Function() onSeatSelected;

  static const double iconSize = 40;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onSeatSelected(),
      child: _avatarIcon(avatarUrl, isSeated),
    );
  }

  Widget _avatarIcon(
    String? avatarUrl,
    bool isSeated,
  ) {
    // 座席に着席していない場合、単色の円形を返す
    if (!isSeated) {
      return Container(
        width: iconSize,
        height: iconSize,
        decoration: BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black,
          ),
        ),
        child: const CircleAvatar(
          backgroundColor: Colors.white,
        ),
      );
    }

    // avatarUrlがnullの場合、デフォルトアイコンを返す
    if (avatarUrl == null) {
      return const Icon(
        Icons.account_circle,
        size: iconSize + 4,
      );
    }

    // avatarUrlが有効な場合、画像付きのCircleAvatarを返す
    return CircleAvatar(
      radius: iconSize / 2,
      child: ClipOval(
        child: Image.network(
          avatarUrl,
          fit: BoxFit.cover,
          width: iconSize,
          height: iconSize,
        ),
      ),
    );
  }
}
