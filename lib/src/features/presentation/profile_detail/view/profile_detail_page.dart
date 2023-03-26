import 'package:flutter/material.dart';

import 'package:delivery_app/src/colors/app_color.dart';

import 'package:delivery_app/src/features/presentation/profile_detail/view/components/avatar_view.dart';
import 'package:delivery_app/src/features/presentation/profile_detail/view/components/textfields_view.dart';
import 'package:delivery_app/src/features/presentation/widgets/Headers/header_text.dart';
import 'package:delivery_app/src/features/presentation/widgets/back_buttons/back_button.dart';
import 'package:delivery_app/src/utils/Extensions/screen_size_extension.dart';
import 'package:delivery_app/src/utils/Styles/box_decoration_shadows.dart';

class ProfileDetailPage extends StatefulWidget {
  const ProfileDetailPage({Key? key}) : super(key: key);

  @override
  ProfileDetailPageState createState() => ProfileDetailPageState();
}

class ProfileDetailPageState extends State<ProfileDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgGreyPage,
      appBar: AppBar(
        title: headerText(
          text: 'Edit Profile',
          fontSize: 17,
        ),
        backgroundColor: AppColor.white,
        elevation: 0.4,
        leading: Builder(builder: (BuildContext context) {
          return backButton(
            context: context,
            color: Colors.black,
          );
        }),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.only(
                top: 20,
                right: 15.0,
              ),
              child: headerText(
                text: 'Done',
                color: AppColor.orange,
                fontWeight: FontWeight.w500,
                fontSize: 17.0,
              ),
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: EdgeInsets.only(
                    top: getScreenHeight(context: context, multiplier: 0.1),
                    left: 15,
                    right: 15,
                  ),
                  decoration: createBoxDecorationWithShadows(),
                  width: getScreenWidth(context: context),
                  height: getScreenHeight(
                    context: context,
                    multiplier: 0.65,
                  ),
                  child: Column(
                    children: [
                      Transform.translate(
                        offset: const Offset(0, -60),
                        child: AvatarView(
                            backgroundImage:
                                'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YXZhdGFyfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                      ),
                      const TextFieldsProfileDetailView()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
