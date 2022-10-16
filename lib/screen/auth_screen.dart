import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pomotica/screen/loadingScreen.dart';
import 'package:pomotica/services/habiticaAuthServices.dart';
import 'package:pomotica/styles/colors.dart';
import 'package:pomotica/styles/text_style.dart';
import 'package:pomotica/widget/myTextField.dart';

import '../model/authModel.dart';

class AuthScreen extends StatelessWidget {
  var isLoading = false.obs;
  AuthScreen({Key? key}) : super(key: key);
  late TextEditingController apiController = TextEditingController();
  late TextEditingController userIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(
                child: AnimatedContainer(
                  height: Get.width/2,
                  duration: const Duration(milliseconds: 10),
                  child:
                      Image.asset("assets/img/pomobase.png", fit: BoxFit.contain),
                ),
              ),
              const SizedBox(height: 50),
              MyTextField(
                label: "Habitica API Token",
                helperTxt: "Find Api key from habitica's setting pane",
                txtController: apiController,
              ).scaleton(),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                label: "Habitica User_ID",
                isUserId: true,
                helperTxt: "Find user ID from habitica's setting pane",
                txtController: userIdController,
              ).scaleton(),
              const SizedBox(height: 40),
              Center(
                  child: Obx(() => ElevatedButton.icon(
                        label: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: MyText("Connect").textt(),
                        ),
                        icon: isLoading.value
                            ? const CircularProgressIndicator()
                            : const Icon(Iconsax.link),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(MyColors.green),
                        ),
                        onPressed: () async {
                          var habitica = HabiticaAuthServices(getData());
                          var connectionInfo =
                              await habitica.getHabiticaConnection();
                          if (connectionInfo.contains("Not Connected")) {
                            isLoading.value = false;
                            Get.snackbar(
                              "Error! ",
                              connectionInfo,
                              icon: const Icon(Iconsax.wifi),
                              backgroundColor: MyColors.pink.withOpacity(0.3),
                              margin: const EdgeInsets.all(50),
                              duration: const Duration(seconds: 2)
                            );
                            return;
                          }
                          if (connectionInfo.contains("Error")) {
                            isLoading.value = false;
                            Get.snackbar("Error", connectionInfo,
                                icon:
                                    const Icon(Iconsax.warning_2, color: Colors.red),
                                backgroundColor: MyColors.pink.withOpacity(0.3),
                                margin: const EdgeInsets.all(50),
                                duration: const Duration(seconds: 2));
                            return;
                          }

                          await habitica.setAuth();
                          Get.off(LoadingScreen(
                              authModel: await HabiticaAuthServices.getAuth()
                                  as AuthModel));
                        },
                      )))
            ],
          ),
        ),
      ),
    );
  }

  getData() {
    isLoading.value = true;
    var api = apiController.text;
    var userId = userIdController.text;

    return [api, userId];
  }
}