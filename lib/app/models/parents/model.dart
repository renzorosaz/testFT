abstract class Model {
  String? id;

  int intFromJson(Map<String, dynamic> json, String attribute,
      {int defaultValue = 0}) {
    try {
      if (json != null && json[attribute] != null) {
        if (json[attribute] is int) {
          return json[attribute];
        }
        return int.parse(json[attribute]);
      }
      return defaultValue;
    } catch (e) {
      throw Exception(
          'Error while parsing ' + attribute + '[' + e.toString() + ']');
    }
  }

  DateTime? dateFromJson(Map<String, dynamic> json, String attribute,
      {DateTime? defaultValue}) {
    try {
      return json != null
          ? json[attribute] != null
              ? DateTime.parse(json[attribute]).toLocal()
              : defaultValue
          : defaultValue;
    } catch (e) {
      throw Exception(
          'Error while parsing ' + attribute + '[' + e.toString() + ']');
    }
  }
}
