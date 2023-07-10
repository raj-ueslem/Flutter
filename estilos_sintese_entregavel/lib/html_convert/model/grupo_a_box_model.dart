import 'package:html/parser.dart';

class ConvertGrupoABoxModel {
  static Map<String, String> convertGrupoABox(String html) {
    Map<String, String> grupoA = {
      "template-type": "",
      "icon-align": "",
    };

    var doc = parse(html);

    String component = "grupoabox";
    List<String> selectors = ["template-type", "icon-align"];

    for (int i = 0; i < selectors.length; i++) {
      print(doc.body
          ?.querySelector(component)
          ?.attributes[selectors.elementAt(i)]
          .toString());
      grupoA.update(
          selectors.elementAt(i),
          (value) =>
              value +
              doc.body!
                  .querySelector(component)!
                  .attributes[selectors.elementAt(i)]
                  .toString());
    }
    return grupoA;
  }
}
