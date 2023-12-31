import 'package:cached_network_image/cached_network_image.dart';
import 'package:engineer_circle/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class SeatIcon extends StatelessWidget {
  const SeatIcon({
    super.key,
    required this.iconSize,
    required this.avatarUrl,
    required this.isSeated,
    required this.onSeatSelected,
  });

  final double iconSize;
  final String? avatarUrl;
  final bool isSeated;
  final Function() onSeatSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onSeatSelected(),
      customBorder: const CircleBorder(),
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
          backgroundColor: Colors.transparent,
        ),
      );
    }

    // avatarUrlがnullの場合、デフォルトアイコンを返す
    if (avatarUrl == null) {
      return Container(
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
            padding: const EdgeInsets.only(top: 4),
            child: ClipOval(
              child: Image.asset(
                Assets.images.defaultPersonIc.path,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
    }

    // avatarUrlが有効な場合、画像付きのCircleAvatarを返す
    return CircleAvatar(
      radius: iconSize / 2,
      child: ClipOval(
        child: CachedNetworkImage(
          imageUrl: avatarUrl,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
          errorWidget: (context, url, dynamic error) => const Icon(Icons.error),
          fit: BoxFit.cover,
          width: iconSize,
          height: iconSize,
        ),
      ),
    );
  }
}
