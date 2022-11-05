import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_resume_app/about_page.dart';
import 'package:my_resume_app/utils/themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demconst o',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: const ColorScheme.light(),
        textTheme: TextTheme(
          subtitle1: GoogleFonts.lato(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.w600
          ),
          subtitle2: GoogleFonts.lato(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.w600
          ),
          headline1: GoogleFonts.lato(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w400
          ),
        ),
        appBarTheme:  const AppBarTheme(
          backgroundColor: Colors.blue,
        ),
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        colorScheme: const ColorScheme.dark(),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
        ),
        textTheme: TextTheme(
          subtitle1: GoogleFonts.lato(
                fontSize: 30,
                color: Colors.white70,
                fontWeight: FontWeight.w600
            ),
          subtitle2: GoogleFonts.lato(
              fontSize: 25,
              color: Colors.white70,
              fontWeight: FontWeight.w600
          ),
          headline1: GoogleFonts.lato(
              fontSize: 18,
              color: Colors.white70,
              fontWeight: FontWeight.w600
          )
        ),
      ),
      home: Scaffold(
        body: SafeArea(
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints contraints) {
              if (contraints.maxWidth >= 1366) {
                return Container(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height*0.8,
                              width: 300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey,
                                  image: const DecorationImage(
                                      image: AssetImage('my_pic.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                  child: Text(
                                    "Boluwatife Mustapha",
                                    style: Theme.of(context).textTheme.subtitle1,
                                  ),
                                ),
                                Text(
                                  "Software Developer",
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                    child: SizedBox(
                                        width: 250,
                                        child: Text(
                                            "Software developer with specialization in"
                                                " building applications that work across platforms.",
                                            textAlign: TextAlign.center,
                                            style: TappTheme.darkTheme.textTheme.headline1
                                        )
                                    )
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    "Lagos, Nigeria",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 17, fontWeight: FontWeight.w200),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                                  child: SizedBox(
                                      height: 60,
                                      width: 150,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).push(MaterialPageRoute(
                                              builder: (context) => const AboutPage()));
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.blue.shade900,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(15)),
                                            textStyle: const TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w300,
                                            )),
                                        child: const Text("About"),
                                      )),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }
              else if (contraints.maxWidth < 1366 && contraints.maxWidth > 480) {
                return Container(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height*0.8,
                              width: MediaQuery.of(context).size.width*0.40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey,
                                  image: const DecorationImage(
                                      image: AssetImage('my_pic.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                  child: Text(
                                    "Boluwatife Mustapha",
                                    style: Theme.of(context).textTheme.subtitle1,
                                  ),
                                ),
                                Text(
                                  "Software Developer",
                                  style: Theme.of(context).textTheme.subtitle2,
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                    child: SizedBox(
                                        width: 250,
                                        child: Text(
                                            "Software developer with specialization in"
                                                " building applications that work across platforms.",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).textTheme.headline1
                                        )
                                    )
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    "Lagos, Nigeria",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 17, fontWeight: FontWeight.w200),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                                  child: SizedBox(
                                      height: 60,
                                      width: 150,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).push(MaterialPageRoute(
                                              builder: (context) => const AboutPage()));
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.blue.shade900,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(15)),
                                            textStyle: const TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.w300,
                                            )),
                                        child: const Text("About"),
                                      )),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }
              else {
                return Container(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height* 0.45,
                              width: MediaQuery.of(context).size.width * 0.8,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey,
                                  image: const DecorationImage(
                                      image: AssetImage('my_pic.jpg'),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                              child: Text(
                                "Boluwatife Mustapha",
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                            ),
                            Text(
                              "Software Developer",
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                              child: SizedBox(
                                  width: 250,
                                  child: Text(
                                      "Software developer with specialization in"
                                      " building applications that work across platforms.",
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context).textTheme.headline1
                                  )
                              )
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                              child: Text(
                                "Lagos, Nigeria",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w200),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: SizedBox(
                            height: 60,
                            width: 150,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const AboutPage()));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue.shade900,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  textStyle: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w300,
                                  )),
                              child: const Text("About"),
                            )),
                      )
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
