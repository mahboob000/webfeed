import 'package:xml/xml.dart';

class RssCategory {
  final String? domain;
  final String value;

  RssCategory(this.domain, this.value);

  factory RssCategory.parse(XmlElement element) {
    var domain = element.getAttribute('domain');
    var mvalue = element.value;

    return RssCategory(domain, mvalue!);
  }
}
