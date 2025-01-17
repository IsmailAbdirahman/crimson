import 'package:crimson/crimson.dart';
import 'package:dart_json_mapper/dart_json_mapper.dart' as m;
import 'package:json_annotation/json_annotation.dart';

import 'media.dart';

part 'entities.g.dart';

@JsonSerializable(createToJson: false)
@m.jsonSerializable
@json
class Entities {
  Entities();

  factory Entities.fromJson(Map<String, dynamic> json) =>
      _$EntitiesFromJson(json);

  List<Hashtag>? hashtags;

  List<Media>? media;

  List<Url>? urls;

  List<UserMention>? user_mentions;

  List<Symbol>? symbols;

  List<Poll>? polls;
}

@JsonSerializable(createToJson: false)
@m.jsonSerializable
@json
class Hashtag {
  Hashtag();

  factory Hashtag.fromJson(Map<String, dynamic> json) =>
      _$HashtagFromJson(json);

  List<int>? indices;

  String? text;
}

@JsonSerializable(createToJson: false)
@m.jsonSerializable
@json
class Poll {
  Poll();

  factory Poll.fromJson(Map<String, dynamic> json) => _$PollFromJson(json);

  List<Option>? options;

  String? end_datetime;

  String? duration_minutes;
}

@JsonSerializable(createToJson: false)
@m.jsonSerializable
@json
class Option {
  Option();

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);

  int? position;

  String? text;
}

@JsonSerializable(createToJson: false)
@m.jsonSerializable
@json
class Symbol {
  Symbol();

  factory Symbol.fromJson(Map<String, dynamic> json) => _$SymbolFromJson(json);

  List<int>? indices;

  String? text;
}

@JsonSerializable(createToJson: false)
@m.jsonSerializable
@json
class Url {
  Url();

  factory Url.fromJson(Map<String, dynamic> json) => _$UrlFromJson(json);

  String? display_url;

  String? expanded_url;

  List<int>? indices;

  String? url;
}

@JsonSerializable(createToJson: false)
@m.jsonSerializable
@json
class UserMention {
  UserMention();

  factory UserMention.fromJson(Map<String, dynamic> json) =>
      _$UserMentionFromJson(json);

  String? id_str;

  List<int>? indices;

  String? name;

  String? screen_name;
}
