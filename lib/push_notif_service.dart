import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationService {
  FirebaseMessaging fcm = FirebaseMessaging.instance;

  init() async {
    String? token = await fcm.getToken();
    log("token: ");
    log(token!);
    configure();
  }

  configure() {
    FirebaseMessaging.onMessage.listen(
      (event) {
        print("event is: ${event.notification!.title}");
      },
    );
  }
}
