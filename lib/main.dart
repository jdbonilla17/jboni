import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movil_wrc_app/routes/app_routes.dart';
import 'package:movil_wrc_app/pages/home_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'WRC App',
      debugShowCheckedModeBanner: false,
      home: ProviderListener(
        provider: routerProv,
        onChange: (context, router) {
          // Do something when the router provider changes
        },
        child: AppRouter(),
      ),
    );
  }
}

class AppRouter extends ConsumerWidget {
  const AppRouter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(routerProv);
    return CupertinoApp.router(
      routerDelegate: goRouter.routerDelegate,
      routeInformationParser: goRouter.routeInformationParser,
    );
  }
}
