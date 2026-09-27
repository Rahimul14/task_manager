import 'package:flutter/material.dart';
import 'package:task_manager/screens/loginscreen.dart';
import 'package:task_manager/screens/update_profile.dart';
import 'package:task_manager/utill/app_color.dart';

class TmAppbar extends StatelessWidget implements PreferredSizeWidget {
  const TmAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UpdateProfile()),
              );
            },
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://scontent.fjsr8-2.fna.fbcdn.net/v/t39.30808-6/814560761_1625368408922992_8091154201653579812_n.jpg?stp=dst-jpg_tt6&cstp=mx1086x1086&ctp=s1086x1086&_nc_cat=104&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeErSc25Hd41Pn4DdRXhNhNJvNu17QwkCD2827XtDCQIPaIp88IxCsnjtQ3oSrvCa0yC4A4cET7Y5xgHnQUX0lWb&_nc_ohc=D_YSqXlgNVAQ7kNvwHAiyFa&_nc_oc=AdokUi7p7IzkAQSReNlV4QCzkqaECx09MzRCHXI5pryeyikh1IYNMqzVp0zHfyKFGfI&_nc_zt=23&_nc_ht=scontent.fjsr8-2.fna&_nc_gid=l2PESv7THxsBnsSYMsAIvw&_nc_ss=7b2a8&oh=00_AQJcJJr_fuAU3vDVqm-9FyzE-kv7HlsTfzTddcw8piDlGg&oe=6AB45CCD',
              ),
              radius: 25,
            ),
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Loginscreen()),
            );
          },
          icon: const Icon(Icons.logout, color: Colors.white),
        ),
      ],

      backgroundColor: AppColor.primary1,
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
