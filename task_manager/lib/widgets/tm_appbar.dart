import 'package:flutter/material.dart';
import 'package:task_manager/utill/app_color.dart';

class TmAppbar extends StatelessWidget implements PreferredSizeWidget {
  const TmAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage('YOUR_IMAGE_URL'),
            radius: 25,
          ),

          const SizedBox(width: 10),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "MD. Rahimul Ibne Moynul",
                style: Theme.of(
                  context,
                ).textTheme.titleSmall!.copyWith(color: Colors.white),
              ),

              Text(
                "tasinfree@gmail.com",
                style: Theme.of(
                  context,
                ).textTheme.bodySmall!.copyWith(color: Colors.white),
              ),
            ],
          ),
        ],
      ),

      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.logout, color: Colors.white),
        ),
      ],

      backgroundColor: AppColor.primary1,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
