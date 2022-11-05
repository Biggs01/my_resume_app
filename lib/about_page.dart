import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_resume_app/screens/aboutPage_Desktop.dart';
import 'package:my_resume_app/screens/aboutPage_Mobile.dart';
import 'package:my_resume_app/screens/aboutPage_Tablet.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

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
                fontWeight: FontWeight.w600),
            subtitle2: GoogleFonts.lato(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.w600),
            headline1: GoogleFonts.notoSans(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w800),
            headline2: GoogleFonts.notoSans(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w600),
            headline3: GoogleFonts.notoSans(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.w800
            ),
          headline4: GoogleFonts.lato(
            fontSize: 15,
            color: Colors.white,
            backgroundColor: Colors.blue.shade900,
          )
        ),
        tabBarTheme: TabBarTheme(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black54,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey
            )
        ),
        appBarTheme: const AppBarTheme(
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
                color: Colors.white,
                fontWeight: FontWeight.w600),
            subtitle2: GoogleFonts.lato(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w600),
            headline1: GoogleFonts.notoSans(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w800),
            headline2: GoogleFonts.notoSans(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w600),
            headline3: GoogleFonts.notoSans(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w800
            ),
            headline4: GoogleFonts.lato(
              fontSize: 15,
              color: Colors.white,
              backgroundColor: Colors.blue.shade900,
            )
        ),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey.shade900
          )
        ),
      ),
      home: Scaffold(
        body: SafeArea(
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints contraints) {
              if (contraints.maxWidth >= 1366) {
                return const AboutPageDesktop();
              } else if (contraints.maxWidth < 1366 &&
                  contraints.maxWidth > 480) {
                return const AboutPageTablet();
              } else {
                return const AboutPageMobile();
              }
            },
          ),
        ),
      ),
    );
  }
}
