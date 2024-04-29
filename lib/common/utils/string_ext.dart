import 'package:intl/intl.dart';

extension CoreNumExt on num {
  String toSimpleIDRCurrency() {
    return NumberFormat.compactSimpleCurrency(
            locale: "id", name: "", decimalDigits: 0)
        .format(this);
  }

  String toIDRCurrency({String symbol = ""}) {
    return NumberFormat.currency(locale: "id", symbol: symbol, decimalDigits: 0)
        .format(this);
  }
}

extension CoreStringExt on String? {
  String toSimpleIDRCurrency() {
    return (num.tryParse(this ?? "") ?? 0).toSimpleIDRCurrency();
  }

  String toIDRCurrency({String symbol = ""}) {
    return (num.tryParse(this ?? "") ?? 0).toIDRCurrency(symbol: symbol);
  }

  DateTime toDate({String format = "dd-MM-yyyy HH:mm:ss"}) {
    return DateFormat(format).parse(this ?? "");
  }
}
