import 'package:webfeed/util/iterable.dart';
import 'package:xml/xml.dart';

class AtomPerson {
  final String? name;
  final String? uri;
  final String? email;

  AtomPerson({this.name, this.uri, this.email});

  factory AtomPerson.parse(XmlElement element) {
    return AtomPerson(
      name: element.findElements('name').firstOrNull?.value,
      uri: element.findElements('uri').firstOrNull?.value,
      email: element.findElements('email').firstOrNull?.value,
    );
  }
}
