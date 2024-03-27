import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            width: 300,
            height: 450,
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.deepPurple[400],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "Profile Info",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                customInfo(title: "Name: ", info: "Nyuh Delbert Kimbi"),
                const SizedBox(
                  height: 10,
                ),
                customInfo(title: "Email: ", info: "delbertdrums5@gmail.com"),
                const SizedBox(
                  height: 10,
                ),
                customInfo(title: "School: ", info: "University of Buea"),
                const SizedBox(
                  height: 10,
                ),
                customInfo(title: "Facculty: ", info: "FET"),
                const SizedBox(
                  height: 10,
                ),
                customInfo(title: "Stack: ", info: "Flutter(Dart)"),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Git hub",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        var url = Uri.parse(
                            'https://github.com/delbertkimbi/Profile_Display');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        }
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Facebook",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        var url = Uri.parse('https://www.facebook.com/');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        }
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row customInfo({required String title, required String info}) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white30,
            fontSize: 15,
          ),
        ),
        Text(
          info,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
