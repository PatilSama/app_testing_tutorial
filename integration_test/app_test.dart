import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestproject/main.dart' as app;
import 'package:integration_test/integration_test.dart';

void main(){
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('Full App Test', (tester)async{
    app.main();
  });
}