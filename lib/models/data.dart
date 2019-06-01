// To parse this JSON data, do
//
//     final data = dataFromJson(jsonString);

import 'dart:convert';

class Data {
    DataClass data;

    Data({
        this.data,
    });

    factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Data.fromMap(Map<String, dynamic> json) => new Data(
        data: json["data"] == null ? null : DataClass.fromMap(json["data"]),
    );

    Map<String, dynamic> toMap() => {
        "data": data == null ? null : data.toMap(),
    };
}

class DataClass {
    List<News> news;
    List<Event> events;
    List<Tutorial> tutorials;
    List<Community> communities;
    List<Widget> widgets;

    DataClass({
        this.news,
        this.events,
        this.tutorials,
        this.communities,
        this.widgets,
    });

    factory DataClass.fromJson(String str) => DataClass.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory DataClass.fromMap(Map<String, dynamic> json) => new DataClass(
        news: json["news"] == null ? null : new List<News>.from(json["news"].map((x) => News.fromMap(x))),
        events: json["events"] == null ? null : new List<Event>.from(json["events"].map((x) => Event.fromMap(x))),
        tutorials: json["tutorials"] == null ? null : new List<Tutorial>.from(json["tutorials"].map((x) => Tutorial.fromMap(x))),
        communities: json["communities"] == null ? null : new List<Community>.from(json["communities"].map((x) => Community.fromMap(x))),
        widgets: json["widgets"] == null ? null : new List<Widget>.from(json["widgets"].map((x) => Widget.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "news": news == null ? null : new List<dynamic>.from(news.map((x) => x.toMap())),
        "events": events == null ? null : new List<dynamic>.from(events.map((x) => x.toMap())),
        "tutorials": tutorials == null ? null : new List<dynamic>.from(tutorials.map((x) => x.toMap())),
        "communities": communities == null ? null : new List<dynamic>.from(communities.map((x) => x.toMap())),
        "widgets": widgets == null ? null : new List<dynamic>.from(widgets.map((x) => x.toMap())),
    };
}

class Community {
    String id;
    String name;
    String description;
    String ircLink;
    String communityLink;

    Community({
        this.id,
        this.name,
        this.description,
        this.ircLink,
        this.communityLink,
    });

    factory Community.fromJson(String str) => Community.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Community.fromMap(Map<String, dynamic> json) => new Community(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        description: json["description"] == null ? null : json["description"],
        ircLink: json["ircLink"] == null ? null : json["ircLink"],
        communityLink: json["communityLink"] == null ? null : json["communityLink"],
    );

    Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "description": description == null ? null : description,
        "ircLink": ircLink == null ? null : ircLink,
        "communityLink": communityLink == null ? null : communityLink,
    };
}

class Event {
    String id;
    String name;
    String venue;
    String organizer;
    DateTime date;
    String time;
    String description;
    String registrationLink;
    String banner;

    Event({
        this.id,
        this.name,
        this.venue,
        this.organizer,
        this.date,
        this.time,
        this.description,
        this.registrationLink,
        this.banner,
    });

    factory Event.fromJson(String str) => Event.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Event.fromMap(Map<String, dynamic> json) => new Event(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        venue: json["venue"] == null ? null : json["venue"],
        organizer: json["organizer"] == null ? null : json["organizer"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        time: json["time"] == null ? null : json["time"],
        description: json["description"] == null ? null : json["description"],
        registrationLink: json["registrationLink"] == null ? null : json["registrationLink"],
        banner: json["banner"] == null ? null : json["banner"],
    );

    Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "venue": venue == null ? null : venue,
        "organizer": organizer == null ? null : organizer,
        "date": date == null ? null : "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
        "time": time == null ? null : time,
        "description": description == null ? null : description,
        "registrationLink": registrationLink == null ? null : registrationLink,
        "banner": banner == null ? null : banner,
    };
}

class News {
    String id;
    String title;
    DateTime time;
    String link;
    Source source;
    String image;

    News({
        this.id,
        this.title,
        this.time,
        this.link,
        this.source,
        this.image,
    });

    factory News.fromJson(String str) => News.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory News.fromMap(Map<String, dynamic> json) => new News(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        time: json["time"] == null ? null : DateTime.parse(json["time"]),
        link: json["link"] == null ? null : json["link"],
        source: json["source"] == null ? null : Source.fromMap(json["source"]),
        image: json["image"] == null ? null : json["image"],
    );

    Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "time": time == null ? null : time.toIso8601String(),
        "link": link == null ? null : link,
        "source": source == null ? null : source.toMap(),
        "image": image == null ? null : image,
    };
}

class Source {
    String id;
    String name;
    String logo;

    Source({
        this.id,
        this.name,
        this.logo,
    });

    factory Source.fromJson(String str) => Source.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Source.fromMap(Map<String, dynamic> json) => new Source(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        logo: json["logo"] == null ? null : json["logo"],
    );

    Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "logo": logo == null ? null : logo,
    };
}

class Tutorial {
    String id;
    String title;
    String author;
    DateTime publishedDate;
    String link;
    Source source;

    Tutorial({
        this.id,
        this.title,
        this.author,
        this.publishedDate,
        this.link,
        this.source,
    });

    factory Tutorial.fromJson(String str) => Tutorial.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Tutorial.fromMap(Map<String, dynamic> json) => new Tutorial(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        author: json["author"] == null ? null : json["author"],
        publishedDate: json["publishedDate"] == null ? null : DateTime.parse(json["publishedDate"]),
        link: json["link"] == null ? null : json["link"],
        source: json["source"] == null ? null : Source.fromMap(json["source"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "author": author == null ? null : author,
        "publishedDate": publishedDate == null ? null : "${publishedDate.year.toString().padLeft(4, '0')}-${publishedDate.month.toString().padLeft(2, '0')}-${publishedDate.day.toString().padLeft(2, '0')}",
        "link": link == null ? null : link,
        "source": source == null ? null : source.toMap(),
    };
}

class Widget {
    String id;
    String name;
    String description;
    String image;
    String link;

    Widget({
        this.id,
        this.name,
        this.description,
        this.image,
        this.link,
    });

    factory Widget.fromJson(String str) => Widget.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Widget.fromMap(Map<String, dynamic> json) => new Widget(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        description: json["description"] == null ? null : json["description"],
        image: json["image"] == null ? null : json["image"],
        link: json["link"] == null ? null : json["link"],
    );

    Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "description": description == null ? null : description,
        "image": image == null ? null : image,
        "link": link == null ? null : link,
    };
}
