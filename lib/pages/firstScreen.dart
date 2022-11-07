import 'package:flutter/material.dart';
import 'package:my_resume/values/assets.dart';
import 'package:url_launcher/url_launcher.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(
                  Colors.black45.withOpacity(0.1), BlendMode.dstATop),
              image: AssetImage(AppAssets.jay),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 80.0,
                    backgroundImage: AssetImage(AppAssets.jay),
                    child: ClipRRect(
                      child: Image.asset('assets/jay.jpg'),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  Text(
                    'Jacob OLuwayanmife',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 20,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Jacobyanmife',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 15,
                          color: Colors.teal,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '(Mobile Developer)',
                        style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontSize: 15,
                          color: Colors.teal,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'FLUTTER DEVELOPER',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 18,
                      color: Color.fromARGB(255, 13, 123, 114),
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      socialNetwork(
                          name: 'Jacob Abiodun',
                          logo: AppAssets.linkedin,
                          string:
                              'https://www.linkedin.com/in/jacob-abiodun-0a2aa0109/'),
                      SizedBox(width: 10),
                      socialNetwork(
                          name: 'Abiodun Jacob',
                          logo: AppAssets.facebook,
                          string: 'https://web.facebook.com/abiodun.jacob3'),
                      SizedBox(width: 10),
                      socialNetwork(
                          name: 'YanmifeJacob',
                          logo: AppAssets.twitter,
                          string: 'https://twitter.com/yanmifejacob'),
                    ],
                  ),
                  SizedBox(height: 10),
                  text(label: 'About Me', size: 18),
                  divide(),
                  SizedBox(),
                  Center(
                    child: text(
                        label:
                            '"I am a pragmatic and Diligient young man, open to learning and building society." ',
                        space: 0.5,
                        size: 12,
                        color: Color.fromARGB(255, 4, 67, 61)),
                  ),
                  SizedBox(height: 20),
                  text(label: 'What I can Offer', size: 18),
                  divide(),
                  tile('Good Team Work ability'),
                  SizedBox(height: 5),
                  tile('Good Approaching to problem Solving'),
                  SizedBox(height: 5),
                  tile('Understanding of flutter'),
                  SizedBox(height: 5),
                  tile('Microsoft Ofiice Suite'),
                  SizedBox(height: 5),
                  tile('python'),
                ]),
          ),
        ));
  }
}

Widget tile(String label) {
  return ListTile(
    tileColor: Colors.teal,
    iconColor: Color.fromARGB(255, 241, 247, 247),
    leading: Icon(Icons.fiber_manual_record),
    title: text(
        label: label,
        space: 0.5,
        size: 14,
        color: Color.fromARGB(255, 241, 247, 247)),
  );
}

Widget socialNetwork(
    {required String name, required String logo, required String string}) {
  return InkWell(
    onTap: () => launchUrl(Uri.parse(string)),
    child: Container(
        height: 30,
        width: 100,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 209, 224, 223),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Image(image: AssetImage(logo)),
            SizedBox(width: 5),
            Text(
              name,
              style: TextStyle(
                fontSize: 10,
                fontFamily: 'SourceSansPro',
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 13, 123, 114),
              ),
            ),
          ],
        )),
  );
}

Widget text(
    {required String label,
    double size = 18,
    Color? color,
    double space = 2.5}) {
  return Text(label,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: size,
        color: color ?? Colors.teal.shade900,
        fontWeight: FontWeight.w500,
        letterSpacing: space,
        fontFamily: 'SourceSansPro',
      ));
}

Widget divide() {
  return SizedBox(
    height: 10,
    width: 150,
    child: Divider(height: 50, color: Color.fromARGB(255, 36, 104, 98)),
  );
}
