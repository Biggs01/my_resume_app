import 'package:flutter/material.dart';
import 'package:my_resume_app/methods/socialMediaUrl.dart';
import 'package:unicons/unicons.dart';

class AboutPageMobile extends StatefulWidget {
  const AboutPageMobile({Key? key}) : super(key: key);

  @override
  State<AboutPageMobile> createState() => _AboutPageMobileState();
}

class _AboutPageMobileState extends State<AboutPageMobile> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.90,
              width: MediaQuery.of(context).size.width* 0.9,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: Text(
                        "About me",
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ),
                    Padding(
                      padding:EdgeInsets.fromLTRB(0,20,0,0),
                      child: TabBar(
                          controller: tabController,
                          indicator: Theme.of(context).tabBarTheme.indicator,
                          labelColor: Theme.of(context).tabBarTheme.labelColor,
                          unselectedLabelColor: Theme.of(context).tabBarTheme.unselectedLabelColor,
                          tabs:  const [
                            Tab(
                              icon: Icon(UniconsLine.user, size: 35,),
                              child: Text("About Me",),
                            ),
                            Tab(
                              icon: Icon(UniconsLine.bag, size: 35,),
                              child: Text("Experience"),
                            ),
                            Tab(
                              icon: Icon(UniconsLine.award_alt, size: 35,),
                              child: Text("Education"),
                            ),
                          ]),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          // first tab bar view widget
                          Center(
                            //color: Colors.blue,
                            child: Container(
                              child: SingleChildScrollView(
                                physics: BouncingScrollPhysics(),
                                child: Padding(
                                  padding:EdgeInsets.fromLTRB(0,30,0,0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: MediaQuery.of(context).size.height * 0.35,
                                        decoration:Theme.of(context).tabBarTheme.indicator,
                                        padding: const EdgeInsets.fromLTRB(10,0,10,0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width,
                                              child: Text(
                                                "Skills",
                                                textAlign: TextAlign.left,
                                                style:Theme.of(context).textTheme.headline1,
                                              ),
                                            ),
                                            Column(
                                                children:[
                                                  Row(
                                                    children:  [
                                                      Container(
                                                        width: MediaQuery.of(context).size.width/2,
                                                        padding:const EdgeInsets.fromLTRB(0,10,0,5),
                                                        child: Text(
                                                          "Problem-Solving Skills",
                                                          textAlign: TextAlign.left,
                                                          style:Theme.of(context).textTheme.headline2,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                          width: MediaQuery.of(context).size.width/3,
                                                          child: Text(
                                                            "90%",
                                                            textAlign: TextAlign.right,
                                                            style:Theme.of(context).textTheme.headline2,
                                                          )
                                                      )
                                                    ],
                                                  ),
                                                  Container(
                                                    width: MediaQuery.of(context).size.width,
                                                    alignment: Alignment.center,
                                                    padding: const EdgeInsets.fromLTRB(0,0,0,10),
                                                    child: ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: LinearProgressIndicator(
                                                        backgroundColor: Colors.white,
                                                        color: Colors.blue.shade900,
                                                        value: 0.90,
                                                        minHeight: 8,
                                                      ),
                                                    ),
                                                  ),

                                                  Row(
                                                    children:  [
                                                      Container(
                                                        width: MediaQuery.of(context).size.width/2,
                                                        padding:const EdgeInsets.fromLTRB(0,10,0,5),
                                                        child: Text(
                                                          "Mathematical Skills",
                                                          textAlign: TextAlign.left,
                                                          style: Theme.of(context).textTheme.headline2,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                          width: MediaQuery.of(context).size.width/3,
                                                          child: Text(
                                                            "80%",
                                                            textAlign: TextAlign.right,
                                                            style: Theme.of(context).textTheme.headline2,
                                                          )
                                                      )
                                                    ],
                                                  ),
                                                  Container(
                                                    width: MediaQuery.of(context).size.width,
                                                    alignment: Alignment.center,
                                                    padding: const EdgeInsets.fromLTRB(0,0,0,10),
                                                    child: ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child:  LinearProgressIndicator(
                                                        backgroundColor: Colors.white,
                                                        color: Colors.blue.shade900,
                                                        value: 0.80,
                                                        minHeight: 8,
                                                      ),
                                                    ),
                                                  ),

                                                  Row(
                                                    children:  [
                                                      Container(
                                                        width: MediaQuery.of(context).size.width/2,
                                                        padding:const EdgeInsets.fromLTRB(0,10,0,5),
                                                        child: Text(
                                                          "Inquisitiveness",
                                                          textAlign: TextAlign.left,
                                                          style: Theme.of(context).textTheme.headline2,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                          width: MediaQuery.of(context).size.width/3,
                                                          child: Text(
                                                            "100%",
                                                            textAlign: TextAlign.right,
                                                            style:Theme.of(context).textTheme.headline2,
                                                          )
                                                      )
                                                    ],
                                                  ),
                                                  Container(
                                                    width: MediaQuery.of(context).size.width,
                                                    alignment: Alignment.center,
                                                    padding: const EdgeInsets.fromLTRB(0,0,0,10),
                                                    child: ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: LinearProgressIndicator(
                                                        backgroundColor: Colors.white,
                                                        color: Colors.blue.shade900,
                                                        value: 1,
                                                        minHeight: 8,
                                                      ),
                                                    ),
                                                  ),

                                                  Row(
                                                    children:  [
                                                      Container(
                                                        width: MediaQuery.of(context).size.width/2,
                                                        padding:const EdgeInsets.fromLTRB(0,10,0,5),
                                                        child: Text(
                                                          "Communication",
                                                          textAlign: TextAlign.left,
                                                          style: Theme.of(context).textTheme.headline2,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                          width: MediaQuery.of(context).size.width/3,
                                                          child: Text(
                                                            "80%",
                                                            textAlign: TextAlign.right,
                                                            style:Theme.of(context).textTheme.headline2,
                                                          )
                                                      )
                                                    ],
                                                  ),
                                                  Container(
                                                    width: MediaQuery.of(context).size.width,
                                                    alignment: Alignment.center,
                                                    padding: const EdgeInsets.fromLTRB(0,0,0,10),
                                                    child: ClipRRect(
                                                      borderRadius: BorderRadius.circular(10),
                                                      child: LinearProgressIndicator(
                                                        backgroundColor: Colors.white,
                                                        color: Colors.blue.shade900,
                                                        value: 0.80,
                                                        minHeight: 8,
                                                      ),
                                                    ),
                                                  ),

                                                ]
                                            )
                                          ]
                                          ,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                        child: Container(
                                          height: MediaQuery.of(context).size.height *0.15,
                                          decoration: Theme.of(context).tabBarTheme.indicator,
                                          padding: EdgeInsets.all(10),
                                          child: Wrap(
                                            spacing: 10,
                                            children: [
                                              Column(
                                                children: [
                                                  SizedBox(
                                                      width: MediaQuery.of(context).size.width,
                                                      child: Text("Interests in:",
                                                        textAlign: TextAlign.left,
                                                        style:Theme.of(context).textTheme.headline1,
                                                      )),
                                                  Padding(
                                                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                                    child: Container(
                                                      alignment: Alignment.centerLeft,
                                                      child: Wrap(
                                                        direction: Axis.horizontal,
                                                        spacing: 5,
                                                        runSpacing: 5,
                                                        children:  [
                                                          Container(
                                                            padding: EdgeInsets.all(10),
                                                            decoration: BoxDecoration(
                                                              borderRadius: BorderRadius.circular(20),
                                                              color: Theme.of(context).textTheme.headline4!.backgroundColor,
                                                            ),
                                                            child: Text("Developing Mobile Apps",
                                                            style: Theme.of(context).textTheme.headline4),
                                                          ),
                                                          Container(
                                                            padding: EdgeInsets.all(10),
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(20),
                                                              color: Theme.of(context).textTheme.headline4!.backgroundColor,
                                                            ),
                                                            child: Text("Graphics",
                                                              style: Theme.of(context).textTheme.headline4,
                                                            ),
                                                          ),
                                                          Container(
                                                            padding: EdgeInsets.all(10),
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(20),
                                                              color: Theme.of(context).textTheme.headline4!.backgroundColor,
                                                            ),
                                                            child: Text("Nature",
                                                              style: Theme.of(context).textTheme.headline4,
                                                            ),
                                                          ),
                                                          Container(
                                                            padding: EdgeInsets.all(10),
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(20),
                                                              color: Theme.of(context).textTheme.headline4!.backgroundColor,
                                                            ),
                                                            child:  Text("Blogging",
                                                              style: Theme.of(context).textTheme.headline4,
                                                            ),
                                                          ),
                                                          Container(
                                                            padding: EdgeInsets.all(10),
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(20),
                                                              color: Theme.of(context).textTheme.headline4!.backgroundColor,
                                                            ),
                                                            child:  Text("Traveling",
                                                              style: Theme.of(context).textTheme.headline4,
                                                            ),
                                                          ),
                                                          Container(
                                                            padding: EdgeInsets.all(10),
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(20),
                                                              color: Theme.of(context).textTheme.headline4!.backgroundColor,
                                                            ),
                                                            child:  Text("Programming",
                                                              style: Theme.of(context).textTheme.headline4,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(0,20,0,0),
                                        child: Container(
                                          alignment: Alignment.centerLeft,
                                          padding: const EdgeInsets.all(10),
                                          decoration: Theme.of(context).tabBarTheme.indicator,
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                  width: MediaQuery.of(context).size.width,
                                                  child: Text("Connect with me",textAlign: TextAlign.left,
                                                  style: Theme.of(context).textTheme.headline1,)),
                                              Wrap(
                                                spacing: 10,
                                                runSpacing: 0,
                                                children: [
                                                  ElevatedButton(
                                                      onPressed: (){
                                                        SocialMediaUrl.launchTwitterURL();
                                                      },
                                                    style: ElevatedButton.styleFrom(
                                                        backgroundColor: Colors.blue.shade900,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(15)),
                                                        textStyle: const TextStyle(
                                                          fontSize: 25,
                                                          fontWeight: FontWeight.w300,
                                                        ),

                                                    ),
                                                      child: Icon(UniconsLine.twitter, size: 30, color: Theme.of(context).textTheme.headline4!.color,),
                                                  ),
                                                  ElevatedButton(
                                                      onPressed: (){
                                                        SocialMediaUrl.launchInstagramURL();
                                                      },
                                                    style: ElevatedButton.styleFrom(
                                                        backgroundColor: Colors.blue.shade900,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(15)),
                                                        textStyle: const TextStyle(
                                                          fontSize: 25,
                                                          fontWeight: FontWeight.w300,
                                                        )),
                                                      child: Icon(UniconsLine.instagram, size: 30, color: Theme.of(context).textTheme.headline4!.color,),
                                                  ),
                                                  ElevatedButton(
                                                      onPressed: (){
                                                        SocialMediaUrl.launchGoogleMailURL();
                                                      },
                                                    style: ElevatedButton.styleFrom(
                                                        backgroundColor: Colors.blue.shade900,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(15)),
                                                        textStyle: const TextStyle(
                                                          fontSize: 25,
                                                          fontWeight: FontWeight.w300,
                                                        )),
                                                      child: Icon(UniconsLine.envelope, size: 30, color: Theme.of(context).textTheme.headline4!.color,),
                                                  ),
                                                  ElevatedButton(
                                                      onPressed: (){
                                                        SocialMediaUrl.launchLinkedInURL();
                                                      },
                                                    style: ElevatedButton.styleFrom(
                                                        backgroundColor: Colors.blue.shade900,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius: BorderRadius.circular(15)),
                                                        textStyle: const TextStyle(
                                                          fontSize: 25,
                                                          fontWeight: FontWeight.w300,
                                                        )),
                                                      child: Icon(UniconsLine.linkedin, size: 30,  color: Theme.of(context).textTheme.headline4!.color,),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // second tab bar view widget
                          Center(
                            //Experience page
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:  [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 100,
                                  alignment: Alignment.center,
                                  decoration: Theme.of(context).tabBarTheme.indicator,
                                  child: ListTile(
                                    leading: Container(
                                      width: 50,
                                      height:50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.blue.shade900,
                                      ),
                                      child: Icon(UniconsLine.bag, size: 25, color: Theme.of(context).textTheme.headline3!.color,),
                                    ) ,
                                    title:  Text("Mobile Developer", style: TextStyle(
                                      fontSize: 20,
                                    ),),
                                    subtitle: const Text("2022 - Now · HNG9"),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 100,
                                  alignment: Alignment.center,
                                  decoration: Theme.of(context).tabBarTheme.indicator,
                                  child: ListTile(
                                    leading: Container(
                                      width: 50,
                                      height:50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.blue.shade900,
                                      ),
                                      child: Icon(UniconsLine.bag, size: 25, color: Theme.of(context).textTheme.headline3!.color,),
                                    ) ,
                                    title:  Text("FreeLance Web Designer", style: TextStyle(
                                      fontSize: 20,
                                    ),),
                                    subtitle: const Text("2020 - Now · NIIT"),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 100,
                                  alignment: Alignment.center,
                                  decoration: Theme.of(context).tabBarTheme.indicator,
                                  child: ListTile(
                                    leading: Container(
                                      width: 50,
                                      height:50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.blue.shade900,
                                      ),
                                      child: Icon(UniconsLine.bag, size: 25, color: Theme.of(context).textTheme.headline3!.color,),
                                    ) ,
                                    title:  Text("FreeLance Web Designer", style: TextStyle(
                                      fontSize: 20,
                                    ),),
                                    subtitle: const Text("2020 - Now · NIIT"),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 100,
                                  alignment: Alignment.center,
                                  decoration: Theme.of(context).tabBarTheme.indicator,
                                  child: ListTile(
                                    leading: Container(
                                      width: 50,
                                      height:50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.blue.shade900,
                                      ),
                                      child: Icon(UniconsLine.bag, size: 25, color: Theme.of(context).textTheme.headline3!.color,),
                                    ) ,
                                    title:  const Text("FreeLance Web Designer", style: TextStyle(
                                      fontSize: 20,
                                    ),),
                                    subtitle: const Text("2020 - Now · NIIT"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Center(
                            //Experience page
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:  [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 100,
                                  alignment: Alignment.center,
                                  decoration: Theme.of(context).tabBarTheme.indicator,
                                  child: ListTile(
                                    leading: Container(
                                      width: 50,
                                      height:50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.blue.shade900,
                                      ),
                                      child: Icon(UniconsLine.award, size: 25, color: Theme.of(context).textTheme.headline3!.color,),
                                    ) ,
                                    title:  Text("Bachelor in Software Enginnering", style: TextStyle(
                                      fontSize: 20,
                                    ),),
                                    subtitle: const Text("2021 - 2024 · University"),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 100,
                                  alignment: Alignment.center,
                                  decoration: Theme.of(context).tabBarTheme.indicator,
                                  child: ListTile(
                                    leading: Container(
                                      width: 50,
                                      height:50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.blue.shade900,
                                      ),
                                      child: Icon(UniconsLine.award, size: 25, color: Theme.of(context).textTheme.headline3!.color,),
                                    ) ,
                                    title:  Text("Master in Software Engineering", style: TextStyle(
                                      fontSize: 20,
                                    ),),
                                    subtitle: const Text("2023 - 2024 · University"),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 100,
                                  alignment: Alignment.center,
                                  decoration: Theme.of(context).tabBarTheme.indicator,
                                  child: ListTile(
                                    leading: Container(
                                      width: 50,
                                      height:50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.blue.shade900,
                                      ),
                                      child: Icon(UniconsLine.award, size: 25, color: Theme.of(context).textTheme.headline3!.color,),
                                    ) ,
                                    title:  Text("Bachelor in Software Enginnering", style: TextStyle(
                                      fontSize: 20,
                                    ),),
                                    subtitle: const Text("2021 - 2024 · University"),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 100,
                                  alignment: Alignment.center,
                                  decoration: Theme.of(context).tabBarTheme.indicator,
                                  child: ListTile(
                                    leading: Container(
                                      width: 50,
                                      height:50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.blue.shade900,
                                      ),
                                      child: Icon(UniconsLine.award, size: 25, color: Theme.of(context).textTheme.headline3!.color,),
                                    ) ,
                                    title:  Text("Master in Software Engineering", style: TextStyle(
                                      fontSize: 20,
                                    ),),
                                    subtitle: const Text("2023 - 2024 · University"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
