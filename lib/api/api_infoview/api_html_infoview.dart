import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;

const String htmlEndpoint = 'https://data.riksdagen.se/dokument/HA01';

Future<String> getSummary(beteckning) async {
  String summary = '';
  bool isParsing = false;
  try {
    http.Response response =
        await http.get(Uri.parse('$htmlEndpoint$beteckning'));
    if (response.statusCode == 200) {
      dom.Document html = dom.Document.html(response.body);

      html.querySelectorAll('p').forEach((element) {
        if (element.classes.contains(
                'Sammanfattning') || // dessa är lite oklara för tillfället eftersom att HTML-koden ser olika ut beroende på vilken fråga vi är inne på.
            element.classes.contains('R1')) {
          isParsing = true;
        } else if (element.classes.contains('Innehllsfrteckning')) {
          isParsing = false;
        } else if (isParsing) {
          List<dom.Element> spans =
              element.querySelectorAll('span'); // Hämtar alla span-objekt
          final text = spans
              .where((spanElement) =>
                  spanElement.attributes['style'] ==
                  null) // Filtrerar ut <span style> objekt som fuckar upp
              .map((spanElement) => spanElement.innerHtml.trim())
              .join(' ');

          if (spans.length == 1) {
            if (text.isNotEmpty) {
              summary += '$text\n';
            }
          } else {
            if (text != '&nbsp;' || text != '&shy;') {
              summary += '$text\n';
            }
          }
        }
      });
    } else {
      print('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('HTTP request error: $e');
  }
  return summary;
}