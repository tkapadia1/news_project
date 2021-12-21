// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.info,
    required this.item,
  });

  Info info;
  List<Item> item;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        info: Info.fromJson(json["info"]),
        item: List<Item>.from(json["item"].map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "info": info.toJson(),
        "item": List<dynamic>.from(item.map((x) => x.toJson())),
      };
}

class Info {
  Info({
    required this.postmanId,
    required this.name,
    required this.schema,
  });

  String postmanId;
  String name;
  String schema;

  factory Info.fromJson(Map<String, dynamic> json) => Info(
        postmanId: json["_postman_id"],
        name: json["name"],
        schema: json["schema"],
      );

  Map<String, dynamic> toJson() => {
        "_postman_id": postmanId,
        "name": name,
        "schema": schema,
      };
}

class Item {
  Item({
    required this.name,
    required this.id,
    required this.request,
    required this.response,
  });

  String name;
  String id;
  Request request;
  List<dynamic> response;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        name: json["name"],
        id: json["id"],
        request: Request.fromJson(json["request"]),
        response: List<dynamic>.from(json["response"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
        "request": request.toJson(),
        "response": List<dynamic>.from(response.map((x) => x)),
      };
}

class Request {
  Request({
    required this.method,
    required this.header,
    required this.body,
    required this.url,
  });

  String method;
  List<dynamic> header;
  Body body;
  String url;

  factory Request.fromJson(Map<String, dynamic> json) => Request(
        method: json["method"],
        header: List<dynamic>.from(json["header"].map((x) => x)),
        body: Body.fromJson(json["body"]),
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "method": method,
        "header": List<dynamic>.from(header.map((x) => x)),
        "body": body.toJson(),
        "url": url,
      };
}

class Body {
  Body({
    required this.mode,
    required this.raw,
    required this.options,
  });

  String mode;
  String raw;
  Options options;

  factory Body.fromJson(Map<String, dynamic> json) => Body(
        mode: json["mode"],
        raw: json["raw"],
        options: Options.fromJson(json["options"]),
      );

  Map<String, dynamic> toJson() => {
        "mode": mode,
        "raw": raw,
        "options": options.toJson(),
      };
}

class Options {
  Options({
    required this.raw,
  });

  Raw raw;

  factory Options.fromJson(Map<String, dynamic> json) => Options(
        raw: Raw.fromJson(json["raw"]),
      );

  Map<String, dynamic> toJson() => {
        "raw": raw.toJson(),
      };
}

class Raw {
  Raw({
    required this.language,
  });

  String language;

  factory Raw.fromJson(Map<String, dynamic> json) => Raw(
        language: json["language"],
      );

  Map<String, dynamic> toJson() => {
        "language": language,
      };
}
