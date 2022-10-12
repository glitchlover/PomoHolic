// To parse this JSON data, do
//
//     final habiticaTaskModel = habiticaTaskModelFromMap(jsonString);

import 'dart:convert';

class HabiticaTaskModel {
    HabiticaTaskModel({
        required this.success,
        required this.data,
        required this.notifications,
        required this.appVersion,
    });

    final bool success;
    final List<Datum> data;
    final List<Notification> notifications;
    final String appVersion;

    factory HabiticaTaskModel.fromJson(String str) => HabiticaTaskModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory HabiticaTaskModel.fromMap(Map<String, dynamic> json) => HabiticaTaskModel(
        success: json["success"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
        notifications: List<Notification>.from(json["notifications"].map((x) => Notification.fromMap(x))),
        appVersion: json["appVersion"],
    );

    Map<String, dynamic> toMap() => {
        "success": success,
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
        "notifications": List<dynamic>.from(notifications.map((x) => x.toMap())),
        "appVersion": appVersion,
    };
}

class Datum {
    Datum({
        required this.challenge,
        required this.group,
        required this.up,
        required this.down,
        required this.counterUp,
        required this.counterDown,
        required this.frequency,
        required this.history,
        required this.type,
        required this.notes,
        required this.tags,
        required this.value,
        required this.priority,
        required this.attribute,
        required this.byHabitica,
        required this.reminders,
        required this.createdAt,
        required this.updatedAt,
        required this.id,
        required this.text,
        required this.userId,
        required this.datumId,
        required this.alias,
        required this.repeat,
        required this.everyX,
        required this.streak,
        required this.nextDue,
        required this.yesterDaily,
        required this.completed,
        required this.collapseChecklist,
        required this.startDate,
        required this.daysOfMonth,
        required this.weeksOfMonth,
        required this.checklist,
        required this.isDue,
        required this.date,
    });

    final Challenge challenge;
    final DatumGroup group;
    final bool? up;
    final bool? down;
    final int? counterUp;
    final int? counterDown;
    final String? frequency;
    final List<History>? history;
    final String type;
    final String notes;
    final List<String> tags;
    final double value;
    final double priority;
    final String attribute;
    final bool byHabitica;
    final List<dynamic> reminders;
    final DateTime createdAt;
    final DateTime updatedAt;
    final String id;
    final String text;
    final String userId;
    final String datumId;
    final String? alias;
    final Repeat? repeat;
    final int? everyX;
    final int? streak;
    final List<String>? nextDue;
    final bool? yesterDaily;
    final bool? completed;
    final bool? collapseChecklist;
    final DateTime? startDate;
    final List<dynamic>? daysOfMonth;
    final List<dynamic>? weeksOfMonth;
    final List<Checklist>? checklist;
    final bool? isDue;
    final DateTime? date;

    factory Datum.fromJson(String str) => Datum.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        challenge: Challenge.fromMap(json["challenge"]),
        group: DatumGroup.fromMap(json["group"]),
        up: json["up"] == null ? null : json["up"],
        down: json["down"] == null ? null : json["down"],
        counterUp: json["counterUp"] == null ? null : json["counterUp"],
        counterDown: json["counterDown"] == null ? null : json["counterDown"],
        frequency: json["frequency"] == null ? null : json["frequency"],
        history: json["history"] == null ? null : List<History>.from(json["history"].map((x) => History.fromMap(x))),
        type: json["type"],
        notes: json["notes"],
        tags: List<String>.from(json["tags"].map((x) => x)),
        value: json["value"].toDouble(),
        priority: json["priority"].toDouble(),
        attribute: json["attribute"],
        byHabitica: json["byHabitica"],
        reminders: List<dynamic>.from(json["reminders"].map((x) => x)),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        id: json["_id"],
        text: json["text"],
        userId: json["userId"],
        datumId: json["id"],
        alias: json["alias"] == null ? null : json["alias"],
        repeat: json["repeat"] == null ? null : Repeat.fromMap(json["repeat"]),
        everyX: json["everyX"] == null ? null : json["everyX"],
        streak: json["streak"] == null ? null : json["streak"],
        nextDue: json["nextDue"] == null ? null : List<String>.from(json["nextDue"].map((x) => x)),
        yesterDaily: json["yesterDaily"] == null ? null : json["yesterDaily"],
        completed: json["completed"] == null ? null : json["completed"],
        collapseChecklist: json["collapseChecklist"] == null ? null : json["collapseChecklist"],
        startDate: json["startDate"] == null ? null : DateTime.parse(json["startDate"]),
        daysOfMonth: json["daysOfMonth"] == null ? null : List<dynamic>.from(json["daysOfMonth"].map((x) => x)),
        weeksOfMonth: json["weeksOfMonth"] == null ? null : List<dynamic>.from(json["weeksOfMonth"].map((x) => x)),
        checklist: json["checklist"] == null ? null : List<Checklist>.from(json["checklist"].map((x) => Checklist.fromMap(x))),
        isDue: json["isDue"] == null ? null : json["isDue"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
    );

    Map<String, dynamic> toMap() => {
        "challenge": challenge.toMap(),
        "group": group.toMap(),
        "up": up == null ? null : up,
        "down": down == null ? null : down,
        "counterUp": counterUp == null ? null : counterUp,
        "counterDown": counterDown == null ? null : counterDown,
        "frequency": frequency == null ? null : frequency,
        "history": history == null ? null : List<dynamic>.from(history!.map((x) => x.toMap())),
        "type": type,
        "notes": notes,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "value": value,
        "priority": priority,
        "attribute": attribute,
        "byHabitica": byHabitica,
        "reminders": List<dynamic>.from(reminders.map((x) => x)),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "_id": id,
        "text": text,
        "userId": userId,
        "id": datumId,
        "alias": alias == null ? null : alias,
        "repeat": repeat == null ? null : repeat!.toMap(),
        "everyX": everyX == null ? null : everyX,
        "streak": streak == null ? null : streak,
        "nextDue": nextDue == null ? null : List<dynamic>.from(nextDue!.map((x) => x)),
        "yesterDaily": yesterDaily == null ? null : yesterDaily,
        "completed": completed == null ? null : completed,
        "collapseChecklist": collapseChecklist == null ? null : collapseChecklist,
        "startDate": startDate == null ? null : startDate!.toIso8601String(),
        "daysOfMonth": daysOfMonth == null ? null : List<dynamic>.from(daysOfMonth!.map((x) => x)),
        "weeksOfMonth": weeksOfMonth == null ? null : List<dynamic>.from(weeksOfMonth!.map((x) => x)),
        "checklist": checklist == null ? null : List<dynamic>.from(checklist!.map((x) => x.toMap())),
        "isDue": isDue == null ? null : isDue,
        "date": date == null ? null : date!.toIso8601String(),
    };
}

class Challenge {
    Challenge({
        required this.taskId,
        required this.id,
        required this.shortName,
    });

    final String? taskId;
    final String? id;
    final String? shortName;

    factory Challenge.fromJson(String str) => Challenge.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Challenge.fromMap(Map<String, dynamic> json) => Challenge(
        taskId: json["taskId"] == null ? null : json["taskId"],
        id: json["id"] == null ? null : json["id"],
        shortName: json["shortName"] == null ? null : json["shortName"],
    );

    Map<String, dynamic> toMap() => {
        "taskId": taskId == null ? null : taskId,
        "id": id == null ? null : id,
        "shortName": shortName == null ? null : shortName,
    };
}

class Checklist {
    Checklist({
        required this.completed,
        required this.text,
        required this.id,
    });

    final bool completed;
    final String text;
    final String id;

    factory Checklist.fromJson(String str) => Checklist.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Checklist.fromMap(Map<String, dynamic> json) => Checklist(
        completed: json["completed"],
        text: json["text"],
        id: json["id"],
    );

    Map<String, dynamic> toMap() => {
        "completed": completed,
        "text": text,
        "id": id,
    };
}

class DatumGroup {
    DatumGroup({
        required this.approval,
        required this.assignedUsers,
        required this.sharedCompletion,
    });

    final Approval approval;
    final List<dynamic> assignedUsers;
    final String sharedCompletion;

    factory DatumGroup.fromJson(String str) => DatumGroup.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory DatumGroup.fromMap(Map<String, dynamic> json) => DatumGroup(
        approval: Approval.fromMap(json["approval"]??{"required": false,"approved":false,"required": false}),
        assignedUsers: List<dynamic>.from(json["assignedUsers"].map((x) => x)),
        sharedCompletion: json["sharedCompletion"]??"",
    );

    Map<String, dynamic> toMap() => {
        "approval": approval.toMap(),
        "assignedUsers": List<dynamic>.from(assignedUsers.map((x) => x)),
        "sharedCompletion": sharedCompletion,
    };
}

class Approval {
    Approval({
        required this.required,
        required this.approved,
        required this.requested,
    });

    final bool required;
    final bool approved;
    final bool requested;

    factory Approval.fromJson(String str) => Approval.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Approval.fromMap(Map<String, dynamic> json) => Approval(
        required: json["required"],
        approved: json["approved"],
        requested: json["requested"]??false,
    );

    Map<String, dynamic> toMap() => {
        "required": required,
        "approved": approved,
        "requested": requested,
    };
}

class History {
    History({
        required this.date,
        required this.value,
        required this.scoredUp,
        required this.scoredDown,
        required this.isDue,
        required this.completed,
    });

    final int? date;
    final double? value;
    final int? scoredUp;
    final int? scoredDown;
    final bool? isDue;
    final bool? completed;

    factory History.fromJson(String str) => History.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory History.fromMap(Map<String, dynamic> json) => History(
        date: json["date"],
        value: json["value"].toDouble(),
        scoredUp: json["scoredUp"] == null ? null : json["scoredUp"],
        scoredDown: json["scoredDown"] == null ? null : json["scoredDown"],
        isDue: json["isDue"] == null ? null : json["isDue"],
        completed: json["completed"] == null ? null : json["completed"],
    );

    Map<String, dynamic> toMap() => {
        "date": date,
        "value": value,
        "scoredUp": scoredUp == null ? null : scoredUp,
        "scoredDown": scoredDown == null ? null : scoredDown,
        "isDue": isDue == null ? null : isDue,
        "completed": completed == null ? null : completed,
    };
}

class Repeat {
    Repeat({
        required this.m,
        required this.t,
        required this.w,
        required this.th,
        required this.f,
        required this.s,
        required this.su,
    });

    final bool m;
    final bool t;
    final bool w;
    final bool th;
    final bool f;
    final bool s;
    final bool su;

    factory Repeat.fromJson(String str) => Repeat.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Repeat.fromMap(Map<String, dynamic> json) => Repeat(
        m: json["m"],
        t: json["t"],
        w: json["w"],
        th: json["th"],
        f: json["f"],
        s: json["s"],
        su: json["su"],
    );

    Map<String, dynamic> toMap() => {
        "m": m,
        "t": t,
        "w": w,
        "th": th,
        "f": f,
        "s": s,
        "su": su,
    };
}

class Notification {
    Notification({
        required this.type,
        required this.data,
        required this.id,
        required this.seen,
    });

    final String type;
    final Data data;
    final String id;
    final bool seen;

    factory Notification.fromJson(String str) => Notification.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Notification.fromMap(Map<String, dynamic> json) => Notification(
        type: json["type"],
        data: Data.fromMap(json["data"]),
        id: json["id"],
        seen: json["seen"],
    );

    Map<String, dynamic> toMap() => {
        "type": type,
        "data": data.toMap(),
        "id": id,
        "seen": seen,
    };
}

class Data {
    Data({
        required this.group,
    });

    final DataGroup? group;

    factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Data.fromMap(Map<String, dynamic> json) => Data(
        group: json["group"] == null ? null : DataGroup.fromMap(json["group"]),
    );

    Map<String, dynamic> toMap() => {
        "group": group!.toMap(),
    };
}

class DataGroup {
    DataGroup({
        required this.id,
        required this.name,
    });

    final String id;
    final String name;

    factory DataGroup.fromJson(String str) => DataGroup.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory DataGroup.fromMap(Map<String, dynamic> json) => DataGroup(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
    };
}
