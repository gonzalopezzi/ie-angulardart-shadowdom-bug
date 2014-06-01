import 'package:angular/angular.dart';
import 'dart:html';

@Component(selector: 'internet-explorer-bug', 
            templateUrl:'internet-explorer-bug/internet-explorer-bug.html', 
            cssUrl:'internet-explorer-bug/internet-explorer-bug.css',
            useShadowDom: true,
            publishAs: 'ctrl')
class InternetExplorerBug implements ShadowRootAware {
  DivElement _mainDiv;
  
  @override
  void onShadowRoot(ShadowRoot shadowRoot) {
    _mainDiv = shadowRoot.querySelector ("#main-div") as DivElement;
    _appendSomeContent();
  }
  
  void _appendSomeContent() {
    _mainDiv.append(new DivElement()..className = "red-div"
                                    ..appendText("Red background?"));
  }
}