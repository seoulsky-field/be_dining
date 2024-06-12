import 'package:bedining/screens/serach_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/splash_screen.dart';
import './screens/board_screen.dart';
import './screens/auth_screen.dart';
import './screens/notification_center_screen.dart';
import './screens/post_detail_screen.dart';
import './screens/edit_post_screen.dart';
import './providers/posts.dart';
import 'providers/Comments.dart';
import './providers/auth.dart';
import './providers/notifications.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Auth(),
        ),
        ChangeNotifierProxyProvider<Auth, Posts>(
          create: (_) => Posts('', '', []),
          update: (ctx, auth, previousPosts) => Posts(
            auth.token,
            auth.userId,
            previousPosts == null ? [] : previousPosts.items,
          ),
        ),
        ChangeNotifierProxyProvider<Auth, Comments>(
          create: (_) => Comments('', '', []),
          update: (ctx, auth, previousComments) => Comments(
            auth.token,
            auth.userId,
            previousComments == null ? [] : previousComments.items,
          ),
        ),
        ChangeNotifierProxyProvider<Auth, Notifications>(
          create: (_) => Notifications('', '', []),
          update: (ctx, auth, previousNotifications) => Notifications(
            auth.token,
            auth.userId,
            previousNotifications == null ? [] : previousNotifications.items,
          ),
        ),
      ],
      child: Consumer<Auth>(
        builder: (ctx, auth, _) => MaterialApp(
          title: 'bedining',
          theme: ThemeData(
            primaryColor: Colors.red, // 로그인 버튼 색
            fontFamily: 'pretendard',
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red) // 확대시 글자 색, 배경색
                .copyWith(secondary: Colors.blue),
          ),
          home: auth.isAuth
              ? BoardScreen()
              : FutureBuilder(
                  future: auth.tryAutoLogin(),
                  builder: (ctx, authResultSnapshot) =>
                      authResultSnapshot.connectionState ==
                              ConnectionState.waiting
                          ? SplashScreen()
                          : AuthScreen(), // Board -> Auth
                ),
          routes: {
            BoardScreen.routeName: (ctx) => BoardScreen(),
            PostDetailScreen.routeName: (ctx) => PostDetailScreen(),
            EditPostScreen.routeName: (ctx) => EditPostScreen(),
            NotiCenterScreen.routeName: (ctx) => NotiCenterScreen(),
            SearchScreen.routeName: (ctx) => SearchScreen(),
          },
        ),
      ),
    );
  }
}
