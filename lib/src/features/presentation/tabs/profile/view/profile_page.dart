import 'package:delivery_app/src/colors/app_color.dart';
import 'package:delivery_app/src/features/presentation/widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        _header(),
        _contentProfile(context),
      ],
    ));
  }

  Widget _header() {
    return Container(
      height: 250,
      color: AppColor.bgGreyPage,
      padding: const EdgeInsets.all(50),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
            radius: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    headerText(text: 'Cameron Cook', fontSize: 20, fontWeight: FontWeight.w600),
                    IconButton(
                      icon: Icon(Icons.chevron_right, color: AppColor.grey),
                      onPressed: () {
                        Navigator.pushNamed(context, 'profile-detail');
                      },
                    ),
                  ],
                ),
              ),
              Container(
                height: 25,
                margin: const EdgeInsets.only(left: 20.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Image(
                        image: AssetImage('assets/icons/crown.png'),
                        width: 16,
                        height: 16,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        child: headerText(
                          text: 'VIP Member',
                          color: AppColor.white,
                          fontSize: 11,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _contentProfile(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            leading: const Image(
              image: AssetImage('assets/icons/noti.png'),
              width: 29,
              height: 29,
            ),
            title: headerText(
              text: 'Notifications',
              fontWeight: FontWeight.w400,
              fontSize: 17,
            ),
            trailing: Icon(
              Icons.chevron_right,
              color: AppColor.grey,
            ),
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('assets/icons/payicon.png'),
              width: 29,
              height: 29,
            ),
            title: headerText(
              text: 'Payment methods',
              fontWeight: FontWeight.w400,
              fontSize: 17,
            ),
            trailing: Icon(Icons.chevron_right, color: AppColor.grey),
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('assets/icons/rewardicon.png'),
              width: 29,
              height: 29,
            ),
            title: headerText(
              text: 'History',
              fontWeight: FontWeight.w400,
              fontSize: 17,
            ),
            trailing: Icon(Icons.chevron_right, color: AppColor.grey),
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('assets/icons/promoicon.png'),
              width: 29,
              height: 29,
            ),
            title: headerText(
              text: 'Promo Code',
              fontWeight: FontWeight.w400,
              fontSize: 17,
            ),
            trailing: Icon(Icons.chevron_right, color: AppColor.grey),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const Image(
              image: AssetImage('assets/icons/settingicon.png'),
              width: 29,
              height: 29,
            ),
            title: headerText(
              text: 'Settings',
              fontWeight: FontWeight.w400,
              fontSize: 17,
            ),
            trailing: Icon(Icons.chevron_right, color: AppColor.grey),
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('assets/icons/inviteicon.png'),
              width: 29,
              height: 29,
            ),
            title: headerText(
              text: 'Invite Friends',
              fontWeight: FontWeight.w400,
              fontSize: 17,
            ),
            trailing: Icon(Icons.chevron_right, color: AppColor.grey),
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('assets/icons/helpicon.png'),
              width: 29,
              height: 29,
            ),
            title: headerText(
              text: 'Help Center',
              fontWeight: FontWeight.w400,
              fontSize: 17,
            ),
            trailing: Icon(Icons.chevron_right, color: AppColor.grey),
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('assets/icons/abouticon.png'),
              width: 29,
              height: 29,
            ),
            title: headerText(text: 'About us', fontWeight: FontWeight.w400, fontSize: 17),
            trailing: Icon(
              Icons.chevron_right,
              color: AppColor.grey,
            ),
          ),
          ListTile(
            leading: const Image(
              image: AssetImage('assets/icons/logout.png'),
              width: 29,
              height: 29,
            ),
            title: const Text(
              'Sign out',
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: Icon(Icons.chevron_right, color: AppColor.grey),
            onTap: () => {},
          )
        ],
      ),
    );
  }
}
