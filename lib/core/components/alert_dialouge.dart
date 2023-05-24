import 'dart:ui';

import '../export.dart';

class CustomProfileCardDialog extends StatefulWidget {
  const CustomProfileCardDialog({Key? key}) : super(key: key);

  @override
  CustomProfileCardDialogState createState() => CustomProfileCardDialogState();
}

class CustomProfileCardDialogState extends State<CustomProfileCardDialog> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
          SystemUiOverlayStyle(
            statusBarColor: const Color.fromARGB(57, 99, 99, 99).withOpacity(.3) ,
            statusBarBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
          ),
        );
        
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Dialog(
        backgroundColor:  Colors.white,
        child: SizedBox(
          width: 266,
          child: Wrap(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(defaultSpacing),
                decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                ),
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        //user profile picture
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            ImageName.avatarIcon,
                            height: 32,
                            width: 32,
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Saber Ali',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: AppColor.headlineColor,
                              ),
                            ),
                            Text(
                              'Dhaka Bangladesh',
                              style: TextStyle(
                                fontSize: 10,
                                color: AppColor.primaryTextColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const SVG(
                            asset: IconName.addUserIcon,
                            color: AppColor.activeColor,
                            size: 24,
                          ),
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.resolveWith(
                                  (states) =>
                                      states.contains(MaterialState.pressed)
                                          ? 0.03
                                          : 0),
                              // Change the 8 to adjust the default elevation of the button
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(
                                      const Color.fromARGB(240, 252, 243, 239)
                                          .withOpacity(.5)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              )),
                          label: const Text(
                            'Follow',
                            style: TextStyle(
                              color: AppColor.activeColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          top: defaultSpacing, bottom: defaultSpacing),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          ImageName.avatarPic,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 234,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.resolveWith(
                              (states) =>
                                  states.contains(MaterialState.pressed)
                                      ? 0.03
                                      : 0),
                          // Change the 8 to adjust the default elevation of the button
                          backgroundColor: MaterialStateProperty.all<Color>(
                              AppColor.secondaryWhite),
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                          )),
                      child: Container(
                        height: 44,
                        alignment: Alignment.center,
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        child: const Text(
                          "View Post",
                          style: TextStyle(
                              color: AppColor.primaryTextColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
