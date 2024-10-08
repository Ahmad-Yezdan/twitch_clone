import 'package:timeago/timeago.dart' as timeago;

void main() {
  print(timeago.format(DateTime.now().subtract(Duration(hours: 1,minutes: 30))));
}
