import 'package:flutter/material.dart';

import '../../../colors/app_color.dart';
import 'button.dart';
import 'header_text.dart';

Future alertDialog({
  required BuildContext context,
  required ImageProvider<Object> imagePath,
  required String title,
  required String subTitle,
  required String labelButton,
  required Function pressed,
}) async {
  showDialog(
    context: context,
    builder: ((BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        content: SizedBox(
          height: 350,
          child: Column(
            children: [
              Image(
                image: imagePath,
                width: 130,
                height: 130,
              ),
              const SizedBox(
                height: 20,
              ),
              headerText(
                text: title,
                fontSize: 20,
                color: AppColor.primary,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                subTitle,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              button(
                fontSize: 17,
                pressed: pressed,
                text: "Done",
              ),
            ],
          ),
        ),
      );
    }),
  );
}

// Widget _doneButton({
//   required BuildContext context,
//   required String labelButton,
//   required Function pressed,
// }) {
//   return Container(
//     width: 350,
//     height: 45,
//     margin: const EdgeInsets.only(top: 30),
//     child: ElevatedButton(
//       style: ButtonStyle(
//         backgroundColor: MaterialStateProperty.all(
//           Theme.of(context).colorScheme.secondary,
//         ),
//         shape: MaterialStateProperty.all(
//           RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//         ),
//       ),
//       onPressed: () {
//         pressed;
//       },
//       child: Text(
//         labelButton,
//         style: const TextStyle(
//           fontSize: 17,
//         ),
//       ),
//     ),
//   );
// }
