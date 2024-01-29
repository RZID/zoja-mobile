import '/resources/pages/landing_page.dart';
import '/resources/pages/register_page.dart';
import '/resources/pages/login_page.dart';
import '/resources/pages/home_page.dart';
import 'package:nylo_framework/nylo_framework.dart';

/* App Router
|--------------------------------------------------------------------------
| * [Tip] Create pages faster 🚀
| Run the below in the terminal to create new a page.
| "dart run nylo_framework:main make:page profile_page"
| Learn more https://nylo.dev/docs/5.20.0/router
|-------------------------------------------------------------------------- */

appRouter() => nyRoutes((router) {
      router.route(HomePage.path, (context) => HomePage(), initialRoute: false);
      // Add your routes here

      router.route(LoginPage.path, (context) => LoginPage(),
          initialRoute: false);
      router.route(RegisterPage.path, (context) => RegisterPage(),
          initialRoute: false);
      router.route(LandingPage.path, (context) => LandingPage(),
          initialRoute: true);
    });
