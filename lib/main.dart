import 'package:E_Soor/ui/screens/other/about_us.dart';
import 'package:E_Soor/ui/screens/settings.dart';
import 'package:E_Soor/ui/screens/splash_screen/splash_screen.dart';
import 'package:E_Soor/ui/screens/tabs/social.dart';
import 'package:E_Soor/ui/screens/tabs/store.dart';
import 'package:E_Soor/ui/widgets/AppSearch.dart';
import 'package:E_Soor/ui/widgets/ThemeSwitch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:E_Soor/models/auth.dart';
import 'package:E_Soor/models/theme.dart';

//flutter build ios && tar -zcf build/app.ipa build/ios/iphoneos/Runner.app && ls -lh build/app.ipa

void main() => runApp(
      ChangeNotifierProvider<ThemeNotifier>(
        create: (_) => ThemeNotifier(ThemeData.dark()),
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Soor',
      theme: themeData(context),
      home: MySplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  final AuthService _auth = AuthService();
  Duration duration = Duration(milliseconds: 300);
  bool isCollapsed = true;
  double screenHeight, screenWidth;
  AnimationController animationController;
  Animation<double> _scaleAnimation;
  Animation<double> _drawerScaleAnimation;
  Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(
      begin: 1,
      end: 0.7,
    ).animate(animationController);
    _drawerScaleAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(animationController);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
        .animate(animationController);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  String transcription = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return MaterialApp(
      theme: themeData(context),
      title: "E-Soor",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            hiddenDrawer(context),
            mainBody(context),
          ],
        ),
      ),
    );
  }

  Widget hiddenDrawer(context) {
    return Container(
      color: Color.fromRGBO(17, 17, 17, 100),
      child: SlideTransition(
        position: _slideAnimation,
        child: ScaleTransition(
          scale: _drawerScaleAnimation,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 0.22 * screenHeight,
                    width: 0.22 * screenHeight,
                    child: Card(
                        elevation: 5,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image.network(
                                  'https://placekitten.com/200/200',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: Text(
                                "Account Name",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                "@meshmeshCat123",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                  ListTile(
                    leading: Icon(Icons.security),
                    title: Text("Privacy"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.language),
                    title: Text("Language"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text("About us"),
                    onTap: goToAboutUs,
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                    onTap: goToSettings,
                  ),
                  ListTile(
                    leading: Icon(Icons.backspace),
                    title: Text("Log out"),
                    onTap: _auth.logOut,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget mainBody(context) {
    return AnimatedPositioned(
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : (0.6 * screenWidth),
      right: isCollapsed ? 0 : (-0.4 * screenWidth),
      duration: duration,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Material(
          borderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
          child: DefaultTabController(
            length: 2,
            child: NestedScrollView(
              headerSliverBuilder: (context, value) {
                return [
                  SliverAppBar(
                    leading: InkWell(
                      child: Icon(Icons.menu),
                      onTap: () {
                        setState(() {
                          if (isCollapsed) {
                            animationController.forward();
                          } else {
                            animationController.reverse();
                          }
                          isCollapsed = !isCollapsed;
                        });
                      },
                    ),
                    titleSpacing: 0,
                    actions: <Widget>[
                      ThemeSwitch()
                    ],
                    title: FlatButton(
                      onPressed: () {
                        showSearchPage(context, AppSearch(), transcription);
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.search,
                            size: 25,
                          ),
                          Text(
                            " Search",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    centerTitle: true,
                    floating: true,
                    pinned: true,
                    bottom: TabBar(
                      indicatorColor: Colors.white,
                      tabs: <Widget>[
                        Tab(
                          text: "Store",
                          icon: Icon(Icons.store),
                        ),
                        Tab(
                          text: "Social",
                          icon: Icon(Icons.people),
                        )
                      ],
                    ),
                  ),
                ];
              },
              body: TabBarView(
                children: <Widget>[
                  Store(),
                  Social(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void goToSettings() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Settings(),
      ),
    );
  }

  void goToAboutUs() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AboutUs(),
      ),
    );
  }
}

ThemeData themeData(context) {
  final themeNotifier = Provider.of<ThemeNotifier>(context);
  return themeNotifier.getTheme();
}
