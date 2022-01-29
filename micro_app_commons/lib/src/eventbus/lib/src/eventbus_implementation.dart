import 'dart:async';

class EventBus {
  EventBus._internal();
  static final EventBus _singleton = EventBus._internal();
  factory EventBus() => _singleton;

  final _eventBus = StreamController<dynamic>.broadcast();

  static emit(payload) => _singleton._eventBus.sink.add(payload);

  static get listen => _singleton._eventBus.stream.listen;
}
