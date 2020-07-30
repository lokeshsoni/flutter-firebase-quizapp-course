import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<Report>.value(stream: Global.reportRef.documentStream),
        StreamProvider<FirebaseUser>.value(stream: AuthService().user),
      ],
      child: MaterialApp(),
    );
  }
}
