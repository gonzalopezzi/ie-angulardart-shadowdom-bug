import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';
import 'internet-explorer-bug/internet-explorer-bug.dart';

class MainModule extends Module {
  MainModule () {
    bind(InternetExplorerBug);
  }
}

void main() {
  applicationFactory().addModule(new MainModule()).run();
  
}
