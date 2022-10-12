// To parse this JSON data, do
//
//     final habiticaUserModel = habiticaUserModelFromMap(jsonString);

import 'dart:convert';

class HabiticaUserModel {
    HabiticaUserModel({
        required this.success,
        required this.data,
        required this.notifications,
        required this.userV,
        required this.appVersion,
    });

    final bool success;
    final Data data;
    final List<dynamic> notifications;
    final int userV;
    final String appVersion;

    factory HabiticaUserModel.fromJson(String str) => HabiticaUserModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory HabiticaUserModel.fromMap(Map<String, dynamic> json) => HabiticaUserModel(
        success: json["success"],
        data: Data.fromMap(json["data"]),
        notifications: List<dynamic>.from(json["notifications"].map((x) => x)),
        userV: json["userV"],
        appVersion: json["appVersion"],
    );

    Map<String, dynamic> toMap() => {
        "success": success,
        "data": data.toMap(),
        "notifications": List<dynamic>.from(notifications.map((x) => x)),
        "userV": userV,
        "appVersion": appVersion,
    };
}

class Data {
    Data({
        required this.auth,
        required this.achievements,
        required this.backer,
        required this.contributor,
        required this.purchased,
        required this.flags,
        required this.history,
        required this.items,
        required this.invitations,
        required this.party,
        required this.preferences,
        required this.profile,
        required this.stats,
        required this.inbox,
        required this.tasksOrder,
        required this.v,
        required this.balance,
        required this.challenges,
        required this.guilds,
        required this.loginIncentives,
        required this.invitesSent,
        required this.pinnedItemsOrder,
        required this.id,
        required this.lastCron,
        required this.newMessages,
        required this.notifications,
        required this.tags,
        required this.extra,
        required this.pushDevices,
        required this.webhooks,
        required this.pinnedItems,
        required this.unpinnedItems,
        required this.abTests,
        required this.migration,
        required this.dataId,
        required this.needsCron,
    });

    final Auth auth;
    final Achievements achievements;
    final Backer backer;
    final Backer contributor;
    final Purchased purchased;
    final Flags flags;
    final History history;
    final Items items;
    final Invitations invitations;
    final Party party;
    final Preferences preferences;
    final Profile profile;
    final Stats stats;
    final Inbox inbox;
    final TasksOrder tasksOrder;
    final int v;
    final int balance;
    final List<String> challenges;
    final List<String> guilds;
    final int loginIncentives;
    final int invitesSent;
    final List<dynamic> pinnedItemsOrder;
    final String id;
    final DateTime lastCron;
    final Backer newMessages;
    final List<dynamic> notifications;
    final List<Tag> tags;
    final Backer extra;
    final List<PushDevice> pushDevices;
    final List<dynamic> webhooks;
    final List<PinnedItem> pinnedItems;
    final List<dynamic> unpinnedItems;
    final AbTests abTests;
    final String migration;
    final String dataId;
    final bool needsCron;

    factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Data.fromMap(Map<String, dynamic> json) => Data(
        auth: Auth.fromMap(json["auth"]),
        achievements: Achievements.fromMap(json["achievements"]),
        backer: Backer.fromMap(json["backer"]),
        contributor: Backer.fromMap(json["contributor"]),
        purchased: Purchased.fromMap(json["purchased"]),
        flags: Flags.fromMap(json["flags"]),
        history: History.fromMap(json["history"]),
        items: Items.fromMap(json["items"]),
        invitations: Invitations.fromMap(json["invitations"]),
        party: Party.fromMap(json["party"]),
        preferences: Preferences.fromMap(json["preferences"]),
        profile: Profile.fromMap(json["profile"]),
        stats: Stats.fromMap(json["stats"]),
        inbox: Inbox.fromMap(json["inbox"]),
        tasksOrder: TasksOrder.fromMap(json["tasksOrder"]),
        v: json["_v"],
        balance: json["balance"],
        challenges: List<String>.from(json["challenges"].map((x) => x)),
        guilds: List<String>.from(json["guilds"].map((x) => x)),
        loginIncentives: json["loginIncentives"],
        invitesSent: json["invitesSent"],
        pinnedItemsOrder: List<dynamic>.from(json["pinnedItemsOrder"].map((x) => x)),
        id: json["_id"],
        lastCron: DateTime.parse(json["lastCron"]),
        newMessages: Backer.fromMap(json["newMessages"]),
        notifications: List<dynamic>.from(json["notifications"].map((x) => x)),
        tags: List<Tag>.from(json["tags"].map((x) => Tag.fromMap(x))),
        extra: Backer.fromMap(json["extra"]),
        pushDevices: List<PushDevice>.from(json["pushDevices"].map((x) => PushDevice.fromMap(x))),
        webhooks: List<dynamic>.from(json["webhooks"].map((x) => x)),
        pinnedItems: List<PinnedItem>.from(json["pinnedItems"].map((x) => PinnedItem.fromMap(x))),
        unpinnedItems: List<dynamic>.from(json["unpinnedItems"].map((x) => x)),
        abTests: AbTests.fromMap(json["_ABTests"]),
        migration: json["migration"],
        dataId: json["id"],
        needsCron: json["needsCron"],
    );

    Map<String, dynamic> toMap() => {
        "auth": auth.toMap(),
        "achievements": achievements.toMap(),
        "backer": backer.toMap(),
        "contributor": contributor.toMap(),
        "purchased": purchased.toMap(),
        "flags": flags.toMap(),
        "history": history.toMap(),
        "items": items.toMap(),
        "invitations": invitations.toMap(),
        "party": party.toMap(),
        "preferences": preferences.toMap(),
        "profile": profile.toMap(),
        "stats": stats.toMap(),
        "inbox": inbox.toMap(),
        "tasksOrder": tasksOrder.toMap(),
        "_v": v,
        "balance": balance,
        "challenges": List<dynamic>.from(challenges.map((x) => x)),
        "guilds": List<dynamic>.from(guilds.map((x) => x)),
        "loginIncentives": loginIncentives,
        "invitesSent": invitesSent,
        "pinnedItemsOrder": List<dynamic>.from(pinnedItemsOrder.map((x) => x)),
        "_id": id,
        "lastCron": lastCron.toIso8601String(),
        "newMessages": newMessages.toMap(),
        "notifications": List<dynamic>.from(notifications.map((x) => x)),
        "tags": List<dynamic>.from(tags.map((x) => x.toMap())),
        "extra": extra.toMap(),
        "pushDevices": List<dynamic>.from(pushDevices.map((x) => x.toMap())),
        "webhooks": List<dynamic>.from(webhooks.map((x) => x)),
        "pinnedItems": List<dynamic>.from(pinnedItems.map((x) => x.toMap())),
        "unpinnedItems": List<dynamic>.from(unpinnedItems.map((x) => x)),
        "_ABTests": abTests.toMap(),
        "migration": migration,
        "id": dataId,
        "needsCron": needsCron,
    };
}

class AbTests {
    AbTests({
        required this.onboardingPushNotification,
    });

    final String onboardingPushNotification;

    factory AbTests.fromJson(String str) => AbTests.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory AbTests.fromMap(Map<String, dynamic> json) => AbTests(
        onboardingPushNotification: json["onboardingPushNotification"],
    );

    Map<String, dynamic> toMap() => {
        "onboardingPushNotification": onboardingPushNotification,
    };
}

class Achievements {
    Achievements({
        required this.ultimateGearSets,
        required this.streak,
        required this.challenges,
        required this.perfect,
        required this.quests,
        required this.habiticaDays,
        required this.habitBirthdays,
        required this.createdTask,
        required this.completedTask,
        required this.hatchedPet,
        required this.purchasedEquipment,
        required this.joinedGuild,
        required this.joinedChallenge,
    });

    final UltimateGearSets ultimateGearSets;
    final int streak;
    final List<dynamic> challenges;
    final int perfect;
    final Backer quests;
    final int habiticaDays;
    final int habitBirthdays;
    final bool createdTask;
    final bool completedTask;
    final bool hatchedPet;
    final bool purchasedEquipment;
    final bool joinedGuild;
    final bool joinedChallenge;

    factory Achievements.fromJson(String str) => Achievements.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Achievements.fromMap(Map<String, dynamic> json) => Achievements(
        ultimateGearSets: UltimateGearSets.fromMap(json["ultimateGearSets"]),
        streak: json["streak"],
        challenges: List<dynamic>.from(json["challenges"].map((x) => x)),
        perfect: json["perfect"],
        quests: Backer.fromMap(json["quests"]),
        habiticaDays: json["habiticaDays"],
        habitBirthdays: json["habitBirthdays"],
        createdTask: json["createdTask"],
        completedTask: json["completedTask"],
        hatchedPet: json["hatchedPet"],
        purchasedEquipment: json["purchasedEquipment"],
        joinedGuild: json["joinedGuild"],
        joinedChallenge: json["joinedChallenge"],
    );

    Map<String, dynamic> toMap() => {
        "ultimateGearSets": ultimateGearSets.toMap(),
        "streak": streak,
        "challenges": List<dynamic>.from(challenges.map((x) => x)),
        "perfect": perfect,
        "quests": quests.toMap(),
        "habiticaDays": habiticaDays,
        "habitBirthdays": habitBirthdays,
        "createdTask": createdTask,
        "completedTask": completedTask,
        "hatchedPet": hatchedPet,
        "purchasedEquipment": purchasedEquipment,
        "joinedGuild": joinedGuild,
        "joinedChallenge": joinedChallenge,
    };
}

class Backer {
    Backer();

    factory Backer.fromJson(String str) => Backer.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Backer.fromMap(Map<String, dynamic> json) => Backer(
    );

    Map<String, dynamic> toMap() => {
    };
}

class UltimateGearSets {
    UltimateGearSets({
        required this.healer,
        required this.wizard,
        required this.rogue,
        required this.warrior,
    });

    final bool healer;
    final bool wizard;
    final bool rogue;
    final bool warrior;

    factory UltimateGearSets.fromJson(String str) => UltimateGearSets.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory UltimateGearSets.fromMap(Map<String, dynamic> json) => UltimateGearSets(
        healer: json["healer"],
        wizard: json["wizard"],
        rogue: json["rogue"],
        warrior: json["warrior"],
    );

    Map<String, dynamic> toMap() => {
        "healer": healer,
        "wizard": wizard,
        "rogue": rogue,
        "warrior": warrior,
    };
}

class Auth {
    Auth({
        required this.local,
        required this.timestamps,
        required this.google,
        required this.facebook,
        required this.apple,
    });

    final Local local;
    final Timestamps timestamps;
    final Google google;
    final Backer facebook;
    final Backer apple;

    factory Auth.fromJson(String str) => Auth.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Auth.fromMap(Map<String, dynamic> json) => Auth(
        local: Local.fromMap(json["local"]),
        timestamps: Timestamps.fromMap(json["timestamps"]),
        google: Google.fromMap(json["google"]),
        facebook: Backer.fromMap(json["facebook"]),
        apple: Backer.fromMap(json["apple"]),
    );

    Map<String, dynamic> toMap() => {
        "local": local.toMap(),
        "timestamps": timestamps.toMap(),
        "google": google.toMap(),
        "facebook": facebook.toMap(),
        "apple": apple.toMap(),
    };
}

class Google {
    Google({
        required this.id,
        required this.emails,
    });

    final String id;
    final List<Email> emails;

    factory Google.fromJson(String str) => Google.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Google.fromMap(Map<String, dynamic> json) => Google(
        id: json["id"],
        emails: List<Email>.from(json["emails"].map((x) => Email.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "emails": List<dynamic>.from(emails.map((x) => x.toMap())),
    };
}

class Email {
    Email({
        required this.value,
        required this.type,
    });

    final String value;
    final String type;

    factory Email.fromJson(String str) => Email.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Email.fromMap(Map<String, dynamic> json) => Email(
        value: json["value"],
        type: json["type"],
    );

    Map<String, dynamic> toMap() => {
        "value": value,
        "type": type,
    };
}

class Local {
    Local({
        required this.username,
        required this.lowerCaseUsername,
    });

    final String username;
    final String lowerCaseUsername;

    factory Local.fromJson(String str) => Local.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Local.fromMap(Map<String, dynamic> json) => Local(
        username: json["username"],
        lowerCaseUsername: json["lowerCaseUsername"],
    );

    Map<String, dynamic> toMap() => {
        "username": username,
        "lowerCaseUsername": lowerCaseUsername,
    };
}

class Timestamps {
    Timestamps({
        required this.created,
        required this.loggedin,
        required this.updated,
    });

    final DateTime created;
    final DateTime loggedin;
    final DateTime updated;

    factory Timestamps.fromJson(String str) => Timestamps.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Timestamps.fromMap(Map<String, dynamic> json) => Timestamps(
        created: DateTime.parse(json["created"]),
        loggedin: DateTime.parse(json["loggedin"]),
        updated: DateTime.parse(json["updated"]),
    );

    Map<String, dynamic> toMap() => {
        "created": created.toIso8601String(),
        "loggedin": loggedin.toIso8601String(),
        "updated": updated.toIso8601String(),
    };
}

class Flags {
    Flags({
        required this.tour,
        required this.tutorial,
        required this.customizationsNotification,
        required this.showTour,
        required this.dropsEnabled,
        required this.itemsEnabled,
        required this.lastNewStuffRead,
        required this.rewrite,
        required this.classSelected,
        required this.rebirthEnabled,
        required this.recaptureEmailsPhase,
        required this.weeklyRecapEmailsPhase,
        required this.communityGuidelinesAccepted,
        required this.cronCount,
        required this.welcomed,
        required this.armoireEnabled,
        required this.armoireOpened,
        required this.armoireEmpty,
        required this.cardReceived,
        required this.warnedLowHealth,
        required this.verifiedUsername,
        required this.levelDrops,
        required this.lastWeeklyRecap,
        required this.onboardingEmailsPhase,
        required this.newStuff,
    });

    final Map<String, int> tour;
    final Tutorial tutorial;
    final bool customizationsNotification;
    final bool showTour;
    final bool dropsEnabled;
    final bool itemsEnabled;
    final String lastNewStuffRead;
    final bool rewrite;
    final bool classSelected;
    final bool rebirthEnabled;
    final int recaptureEmailsPhase;
    final int weeklyRecapEmailsPhase;
    final bool communityGuidelinesAccepted;
    final int cronCount;
    final bool welcomed;
    final bool armoireEnabled;
    final bool armoireOpened;
    final bool armoireEmpty;
    final bool cardReceived;
    final bool warnedLowHealth;
    final bool verifiedUsername;
    final Backer levelDrops;
    final DateTime lastWeeklyRecap;
    final String onboardingEmailsPhase;
    final bool newStuff;

    factory Flags.fromJson(String str) => Flags.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Flags.fromMap(Map<String, dynamic> json) => Flags(
        tour: Map.from(json["tour"]).map((k, v) => MapEntry<String, int>(k, v)),
        tutorial: Tutorial.fromMap(json["tutorial"]),
        customizationsNotification: json["customizationsNotification"],
        showTour: json["showTour"],
        dropsEnabled: json["dropsEnabled"],
        itemsEnabled: json["itemsEnabled"],
        lastNewStuffRead: json["lastNewStuffRead"],
        rewrite: json["rewrite"],
        classSelected: json["classSelected"],
        rebirthEnabled: json["rebirthEnabled"],
        recaptureEmailsPhase: json["recaptureEmailsPhase"],
        weeklyRecapEmailsPhase: json["weeklyRecapEmailsPhase"],
        communityGuidelinesAccepted: json["communityGuidelinesAccepted"],
        cronCount: json["cronCount"],
        welcomed: json["welcomed"],
        armoireEnabled: json["armoireEnabled"],
        armoireOpened: json["armoireOpened"],
        armoireEmpty: json["armoireEmpty"],
        cardReceived: json["cardReceived"],
        warnedLowHealth: json["warnedLowHealth"],
        verifiedUsername: json["verifiedUsername"],
        levelDrops: Backer.fromMap(json["levelDrops"]),
        lastWeeklyRecap: DateTime.parse(json["lastWeeklyRecap"]),
        onboardingEmailsPhase: json["onboardingEmailsPhase"],
        newStuff: json["newStuff"],
    );

    Map<String, dynamic> toMap() => {
        "tour": Map.from(tour).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "tutorial": tutorial.toMap(),
        "customizationsNotification": customizationsNotification,
        "showTour": showTour,
        "dropsEnabled": dropsEnabled,
        "itemsEnabled": itemsEnabled,
        "lastNewStuffRead": lastNewStuffRead,
        "rewrite": rewrite,
        "classSelected": classSelected,
        "rebirthEnabled": rebirthEnabled,
        "recaptureEmailsPhase": recaptureEmailsPhase,
        "weeklyRecapEmailsPhase": weeklyRecapEmailsPhase,
        "communityGuidelinesAccepted": communityGuidelinesAccepted,
        "cronCount": cronCount,
        "welcomed": welcomed,
        "armoireEnabled": armoireEnabled,
        "armoireOpened": armoireOpened,
        "armoireEmpty": armoireEmpty,
        "cardReceived": cardReceived,
        "warnedLowHealth": warnedLowHealth,
        "verifiedUsername": verifiedUsername,
        "levelDrops": levelDrops.toMap(),
        "lastWeeklyRecap": lastWeeklyRecap.toIso8601String(),
        "onboardingEmailsPhase": onboardingEmailsPhase,
        "newStuff": newStuff,
    };
}

class Tutorial {
    Tutorial({
        required this.common,
        required this.ios,
    });

    final Map<String, bool> common;
    final Ios ios;

    factory Tutorial.fromJson(String str) => Tutorial.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Tutorial.fromMap(Map<String, dynamic> json) => Tutorial(
        common: Map.from(json["common"]).map((k, v) => MapEntry<String, bool>(k, v)),
        ios: Ios.fromMap(json["ios"]),
    );

    Map<String, dynamic> toMap() => {
        "common": Map.from(common).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "ios": ios.toMap(),
    };
}

class Ios {
    Ios({
        required this.addTask,
        required this.editTask,
        required this.deleteTask,
        required this.filterTask,
        required this.groupPets,
        required this.inviteParty,
        required this.reorderTask,
    });

    final bool addTask;
    final bool editTask;
    final bool deleteTask;
    final bool filterTask;
    final bool groupPets;
    final bool inviteParty;
    final bool reorderTask;

    factory Ios.fromJson(String str) => Ios.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Ios.fromMap(Map<String, dynamic> json) => Ios(
        addTask: json["addTask"],
        editTask: json["editTask"],
        deleteTask: json["deleteTask"],
        filterTask: json["filterTask"],
        groupPets: json["groupPets"],
        inviteParty: json["inviteParty"],
        reorderTask: json["reorderTask"],
    );

    Map<String, dynamic> toMap() => {
        "addTask": addTask,
        "editTask": editTask,
        "deleteTask": deleteTask,
        "filterTask": filterTask,
        "groupPets": groupPets,
        "inviteParty": inviteParty,
        "reorderTask": reorderTask,
    };
}

class History {
    History({
        required this.exp,
        required this.todos,
    });

    final List<Exp> exp;
    final List<Todo> todos;

    factory History.fromJson(String str) => History.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory History.fromMap(Map<String, dynamic> json) => History(
        exp: List<Exp>.from(json["exp"].map((x) => Exp.fromMap(x))),
        todos: List<Todo>.from(json["todos"].map((x) => Todo.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "exp": List<dynamic>.from(exp.map((x) => x.toMap())),
        "todos": List<dynamic>.from(todos.map((x) => x.toMap())),
    };
}

class Exp {
    Exp({
        required this.date,
        required this.value,
    });

    final DateTime date;
    final int value;

    factory Exp.fromJson(String str) => Exp.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Exp.fromMap(Map<String, dynamic> json) => Exp(
        date: DateTime.parse(json["date"]),
        value: json["value"].toInt(),
    );

    Map<String, dynamic> toMap() => {
        "date": date.toIso8601String(),
        "value": value,
    };
}

class Todo {
    Todo({
        required this.date,
        required this.value,
    });

    final DateTime date;
    final double value;

    factory Todo.fromJson(String str) => Todo.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Todo.fromMap(Map<String, dynamic> json) => Todo(
        date: DateTime.parse(json["date"]),
        value: json["value"].toDouble(),
    );

    Map<String, dynamic> toMap() => {
        "date": date.toIso8601String(),
        "value": value,
    };
}

class Inbox {
    Inbox({
        required this.newMessages,
        required this.optOut,
        required this.blocks,
        required this.messages,
    });

    final int newMessages;
    final bool optOut;
    final List<dynamic> blocks;
    final Backer messages;

    factory Inbox.fromJson(String str) => Inbox.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Inbox.fromMap(Map<String, dynamic> json) => Inbox(
        newMessages: json["newMessages"],
        optOut: json["optOut"],
        blocks: List<dynamic>.from(json["blocks"].map((x) => x)),
        messages: Backer.fromMap(json["messages"]),
    );

    Map<String, dynamic> toMap() => {
        "newMessages": newMessages,
        "optOut": optOut,
        "blocks": List<dynamic>.from(blocks.map((x) => x)),
        "messages": messages.toMap(),
    };
}

class Invitations {
    Invitations({
        required this.guilds,
        required this.party,
        required this.parties,
    });

    final List<dynamic> guilds;
    final Backer party;
    final List<dynamic> parties;

    factory Invitations.fromJson(String str) => Invitations.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Invitations.fromMap(Map<String, dynamic> json) => Invitations(
        guilds: List<dynamic>.from(json["guilds"].map((x) => x)),
        party: Backer.fromMap(json["party"]),
        parties: List<dynamic>.from(json["parties"].map((x) => x)),
    );

    Map<String, dynamic> toMap() => {
        "guilds": List<dynamic>.from(guilds.map((x) => x)),
        "party": party.toMap(),
        "parties": List<dynamic>.from(parties.map((x) => x)),
    };
}

class Items {
    Items({
        required this.gear,
        required this.special,
        required this.lastDrop,
        required this.pets,
        required this.eggs,
        required this.hatchingPotions,
        required this.food,
        required this.mounts,
        required this.quests,
    });

    final Gear gear;
    final Special special;
    final LastDrop lastDrop;
    final Pets pets;
    final Eggs eggs;
    final HatchingPotions hatchingPotions;
    final Map<String, int> food;
    final Mounts mounts;
    final Quests quests;

    factory Items.fromJson(String str) => Items.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Items.fromMap(Map<String, dynamic> json) => Items(
        gear: Gear.fromMap(json["gear"]),
        special: Special.fromMap(json["special"]),
        lastDrop: LastDrop.fromMap(json["lastDrop"]),
        pets: Pets.fromMap(json["pets"]),
        eggs: Eggs.fromMap(json["eggs"]),
        hatchingPotions: HatchingPotions.fromMap(json["hatchingPotions"]),
        food: Map.from(json["food"]).map((k, v) => MapEntry<String, int>(k, v)),
        mounts: Mounts.fromMap(json["mounts"]),
        quests: Quests.fromMap(json["quests"]),
    );

    Map<String, dynamic> toMap() => {
        "gear": gear.toMap(),
        "special": special.toMap(),
        "lastDrop": lastDrop.toMap(),
        "pets": pets.toMap(),
        "eggs": eggs.toMap(),
        "hatchingPotions": hatchingPotions.toMap(),
        "food": Map.from(food).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "mounts": mounts.toMap(),
        "quests": quests.toMap(),
    };
}

class Eggs {
    Eggs({
        required this.fox,
    });

    final int fox;

    factory Eggs.fromJson(String str) => Eggs.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Eggs.fromMap(Map<String, dynamic> json) => Eggs(
        fox: json["Fox"],
    );

    Map<String, dynamic> toMap() => {
        "Fox": fox,
    };
}

class Gear {
    Gear({
        required this.equipped,
        required this.costume,
        required this.owned,
    });

    final Equipped equipped;
    final Costume costume;
    final Map<String, bool> owned;

    factory Gear.fromJson(String str) => Gear.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Gear.fromMap(Map<String, dynamic> json) => Gear(
        equipped: Equipped.fromMap(json["equipped"]),
        costume: Costume.fromMap(json["costume"]),
        owned: Map.from(json["owned"]).map((k, v) => MapEntry<String, bool>(k, v)),
    );

    Map<String, dynamic> toMap() => {
        "equipped": equipped.toMap(),
        "costume": costume.toMap(),
        "owned": Map.from(owned).map((k, v) => MapEntry<String, dynamic>(k, v)),
    };
}

class Costume {
    Costume({
        required this.armor,
        required this.head,
        required this.shield,
    });

    final String armor;
    final String head;
    final String shield;

    factory Costume.fromJson(String str) => Costume.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Costume.fromMap(Map<String, dynamic> json) => Costume(
        armor: json["armor"],
        head: json["head"],
        shield: json["shield"],
    );

    Map<String, dynamic> toMap() => {
        "armor": armor,
        "head": head,
        "shield": shield,
    };
}

class Equipped {
    Equipped({
        required this.armor,
        required this.head,
        required this.shield,
        required this.weapon,
    });

    final String armor;
    final String head;
    final String shield;
    final String weapon;

    factory Equipped.fromJson(String str) => Equipped.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Equipped.fromMap(Map<String, dynamic> json) => Equipped(
        armor: json["armor"],
        head: json["head"],
        shield: json["shield"],
        weapon: json["weapon"],
    );

    Map<String, dynamic> toMap() => {
        "armor": armor,
        "head": head,
        "shield": shield,
        "weapon": weapon,
    };
}

class HatchingPotions {
    HatchingPotions({
        required this.desert,
        required this.royalPurple,
    });

    final int desert;
    final int royalPurple;

    factory HatchingPotions.fromJson(String str) => HatchingPotions.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory HatchingPotions.fromMap(Map<String, dynamic> json) => HatchingPotions(
        desert: json["Desert"],
        royalPurple: json["RoyalPurple"],
    );

    Map<String, dynamic> toMap() => {
        "Desert": desert,
        "RoyalPurple": royalPurple,
    };
}

class LastDrop {
    LastDrop({
        required this.count,
        required this.date,
    });

    final int count;
    final DateTime date;

    factory LastDrop.fromJson(String str) => LastDrop.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory LastDrop.fromMap(Map<String, dynamic> json) => LastDrop(
        count: json["count"],
        date: DateTime.parse(json["date"]),
    );

    Map<String, dynamic> toMap() => {
        "count": count,
        "date": date.toIso8601String(),
    };
}

class Mounts {
    Mounts({
        required this.orcaBase,
        required this.gryphonRoyalPurple,
        required this.jackOLanternBase,
        required this.turkeyBase,
    });

    final bool orcaBase;
    final bool gryphonRoyalPurple;
    final bool jackOLanternBase;
    final bool turkeyBase;

    factory Mounts.fromJson(String str) => Mounts.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Mounts.fromMap(Map<String, dynamic> json) => Mounts(
        orcaBase: json["Orca-Base"],
        gryphonRoyalPurple: json["Gryphon-RoyalPurple"],
        jackOLanternBase: json["JackOLantern-Base"],
        turkeyBase: json["Turkey-Base"],
    );

    Map<String, dynamic> toMap() => {
        "Orca-Base": orcaBase,
        "Gryphon-RoyalPurple": gryphonRoyalPurple,
        "JackOLantern-Base": jackOLanternBase,
        "Turkey-Base": turkeyBase,
    };
}

class Pets {
    Pets({
        required this.jackOLanternBase,
        required this.turkeyBase,
        required this.orcaBase,
        required this.gryphonRoyalPurple,
        required this.foxDesert,
    });

    final int jackOLanternBase;
    final int turkeyBase;
    final int orcaBase;
    final int gryphonRoyalPurple;
    final int foxDesert;

    factory Pets.fromJson(String str) => Pets.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Pets.fromMap(Map<String, dynamic> json) => Pets(
        jackOLanternBase: json["JackOLantern-Base"],
        turkeyBase: json["Turkey-Base"],
        orcaBase: json["Orca-Base"],
        gryphonRoyalPurple: json["Gryphon-RoyalPurple"],
        foxDesert: json["Fox-Desert"],
    );

    Map<String, dynamic> toMap() => {
        "JackOLantern-Base": jackOLanternBase,
        "Turkey-Base": turkeyBase,
        "Orca-Base": orcaBase,
        "Gryphon-RoyalPurple": gryphonRoyalPurple,
        "Fox-Desert": foxDesert,
    };
}

class Quests {
    Quests({
        required this.dustbunnies,
    });

    final int dustbunnies;

    factory Quests.fromJson(String str) => Quests.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Quests.fromMap(Map<String, dynamic> json) => Quests(
        dustbunnies: json["dustbunnies"],
    );

    Map<String, dynamic> toMap() => {
        "dustbunnies": dustbunnies,
    };
}

class Special {
    Special({
        required this.snowball,
        required this.spookySparkles,
        required this.shinySeed,
        required this.seafoam,
        required this.valentine,
        required this.valentineReceived,
        required this.nye,
        required this.nyeReceived,
        required this.greeting,
        required this.greetingReceived,
        required this.thankyou,
        required this.thankyouReceived,
        required this.birthday,
        required this.birthdayReceived,
        required this.congrats,
        required this.congratsReceived,
        required this.getwell,
        required this.getwellReceived,
        required this.goodluck,
        required this.goodluckReceived,
    });

    final int snowball;
    final int spookySparkles;
    final int shinySeed;
    final int seafoam;
    final int valentine;
    final List<dynamic> valentineReceived;
    final int nye;
    final List<dynamic> nyeReceived;
    final int greeting;
    final List<dynamic> greetingReceived;
    final int thankyou;
    final List<dynamic> thankyouReceived;
    final int birthday;
    final List<dynamic> birthdayReceived;
    final int congrats;
    final List<dynamic> congratsReceived;
    final int getwell;
    final List<dynamic> getwellReceived;
    final int goodluck;
    final List<dynamic> goodluckReceived;

    factory Special.fromJson(String str) => Special.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Special.fromMap(Map<String, dynamic> json) => Special(
        snowball: json["snowball"],
        spookySparkles: json["spookySparkles"],
        shinySeed: json["shinySeed"],
        seafoam: json["seafoam"],
        valentine: json["valentine"],
        valentineReceived: List<dynamic>.from(json["valentineReceived"].map((x) => x)),
        nye: json["nye"],
        nyeReceived: List<dynamic>.from(json["nyeReceived"].map((x) => x)),
        greeting: json["greeting"],
        greetingReceived: List<dynamic>.from(json["greetingReceived"].map((x) => x)),
        thankyou: json["thankyou"],
        thankyouReceived: List<dynamic>.from(json["thankyouReceived"].map((x) => x)),
        birthday: json["birthday"],
        birthdayReceived: List<dynamic>.from(json["birthdayReceived"].map((x) => x)),
        congrats: json["congrats"],
        congratsReceived: List<dynamic>.from(json["congratsReceived"].map((x) => x)),
        getwell: json["getwell"],
        getwellReceived: List<dynamic>.from(json["getwellReceived"].map((x) => x)),
        goodluck: json["goodluck"],
        goodluckReceived: List<dynamic>.from(json["goodluckReceived"].map((x) => x)),
    );

    Map<String, dynamic> toMap() => {
        "snowball": snowball,
        "spookySparkles": spookySparkles,
        "shinySeed": shinySeed,
        "seafoam": seafoam,
        "valentine": valentine,
        "valentineReceived": List<dynamic>.from(valentineReceived.map((x) => x)),
        "nye": nye,
        "nyeReceived": List<dynamic>.from(nyeReceived.map((x) => x)),
        "greeting": greeting,
        "greetingReceived": List<dynamic>.from(greetingReceived.map((x) => x)),
        "thankyou": thankyou,
        "thankyouReceived": List<dynamic>.from(thankyouReceived.map((x) => x)),
        "birthday": birthday,
        "birthdayReceived": List<dynamic>.from(birthdayReceived.map((x) => x)),
        "congrats": congrats,
        "congratsReceived": List<dynamic>.from(congratsReceived.map((x) => x)),
        "getwell": getwell,
        "getwellReceived": List<dynamic>.from(getwellReceived.map((x) => x)),
        "goodluck": goodluck,
        "goodluckReceived": List<dynamic>.from(goodluckReceived.map((x) => x)),
    };
}

class Party {
    Party({
        required this.quest,
        required this.order,
        required this.orderAscending,
    });

    final Quest quest;
    final String order;
    final String orderAscending;

    factory Party.fromJson(String str) => Party.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Party.fromMap(Map<String, dynamic> json) => Party(
        quest: Quest.fromMap(json["quest"]),
        order: json["order"],
        orderAscending: json["orderAscending"],
    );

    Map<String, dynamic> toMap() => {
        "quest": quest.toMap(),
        "order": order,
        "orderAscending": orderAscending,
    };
}

class Quest {
    Quest({
        required this.progress,
        required this.rsvpNeeded,
    });

    final Progress progress;
    final bool rsvpNeeded;

    factory Quest.fromJson(String str) => Quest.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Quest.fromMap(Map<String, dynamic> json) => Quest(
        progress: Progress.fromMap(json["progress"]),
        rsvpNeeded: json["RSVPNeeded"],
    );

    Map<String, dynamic> toMap() => {
        "progress": progress.toMap(),
        "RSVPNeeded": rsvpNeeded,
    };
}

class Progress {
    Progress({
        required this.up,
        required this.down,
        required this.collectedItems,
        required this.collect,
    });

    final double up;
    final int down;
    final int collectedItems;
    final Backer collect;

    factory Progress.fromJson(String str) => Progress.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Progress.fromMap(Map<String, dynamic> json) => Progress(
        up: json["up"].toDouble(),
        down: json["down"],
        collectedItems: json["collectedItems"],
        collect: Backer.fromMap(json["collect"]),
    );

    Map<String, dynamic> toMap() => {
        "up": up,
        "down": down,
        "collectedItems": collectedItems,
        "collect": collect.toMap(),
    };
}

class PinnedItem {
    PinnedItem({
        required this.type,
        required this.path,
    });

    final String type;
    final String path;

    factory PinnedItem.fromJson(String str) => PinnedItem.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory PinnedItem.fromMap(Map<String, dynamic> json) => PinnedItem(
        type: json["type"],
        path: json["path"],
    );

    Map<String, dynamic> toMap() => {
        "type": type,
        "path": path,
    };
}

class Preferences {
    Preferences({
        required this.hair,
        required this.emailNotifications,
        required this.pushNotifications,
        required this.suppressModals,
        required this.tasks,
        required this.dayStart,
        required this.size,
        required this.hideHeader,
        required this.skin,
        required this.shirt,
        required this.timezoneOffset,
        required this.sound,
        required this.chair,
        required this.allocationMode,
        required this.autoEquip,
        required this.dateFormat,
        required this.sleep,
        required this.stickyHeader,
        required this.disableClasses,
        required this.newTaskEdit,
        required this.dailyDueDefaultView,
        required this.advancedCollapsed,
        required this.toolbarCollapsed,
        required this.reverseChatOrder,
        required this.displayInviteToPartyWhenPartyIs1,
        required this.improvementCategories,
        required this.language,
        required this.webhooks,
        required this.background,
        required this.timezoneOffsetAtLastCron,
    });

    final Hair hair;
    final Map<String, bool> emailNotifications;
    final Map<String, bool> pushNotifications;
    final SuppressModals suppressModals;
    final Tasks tasks;
    final int dayStart;
    final String size;
    final bool hideHeader;
    final String skin;
    final String shirt;
    final int timezoneOffset;
    final String sound;
    final String chair;
    final String allocationMode;
    final bool autoEquip;
    final String dateFormat;
    final bool sleep;
    final bool stickyHeader;
    final bool disableClasses;
    final bool newTaskEdit;
    final bool dailyDueDefaultView;
    final bool advancedCollapsed;
    final bool toolbarCollapsed;
    final bool reverseChatOrder;
    final bool displayInviteToPartyWhenPartyIs1;
    final List<dynamic> improvementCategories;
    final String language;
    final Backer webhooks;
    final String background;
    final int timezoneOffsetAtLastCron;

    factory Preferences.fromJson(String str) => Preferences.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Preferences.fromMap(Map<String, dynamic> json) => Preferences(
        hair: Hair.fromMap(json["hair"]),
        emailNotifications: Map.from(json["emailNotifications"]).map((k, v) => MapEntry<String, bool>(k, v)),
        pushNotifications: Map.from(json["pushNotifications"]).map((k, v) => MapEntry<String, bool>(k, v)),
        suppressModals: SuppressModals.fromMap(json["suppressModals"]),
        tasks: Tasks.fromMap(json["tasks"]),
        dayStart: json["dayStart"],
        size: json["size"],
        hideHeader: json["hideHeader"],
        skin: json["skin"],
        shirt: json["shirt"],
        timezoneOffset: json["timezoneOffset"],
        sound: json["sound"],
        chair: json["chair"],
        allocationMode: json["allocationMode"],
        autoEquip: json["autoEquip"],
        dateFormat: json["dateFormat"],
        sleep: json["sleep"],
        stickyHeader: json["stickyHeader"],
        disableClasses: json["disableClasses"],
        newTaskEdit: json["newTaskEdit"],
        dailyDueDefaultView: json["dailyDueDefaultView"],
        advancedCollapsed: json["advancedCollapsed"],
        toolbarCollapsed: json["toolbarCollapsed"],
        reverseChatOrder: json["reverseChatOrder"],
        displayInviteToPartyWhenPartyIs1: json["displayInviteToPartyWhenPartyIs1"],
        improvementCategories: List<dynamic>.from(json["improvementCategories"].map((x) => x)),
        language: json["language"],
        webhooks: Backer.fromMap(json["webhooks"]),
        background: json["background"],
        timezoneOffsetAtLastCron: json["timezoneOffsetAtLastCron"],
    );

    Map<String, dynamic> toMap() => {
        "hair": hair.toMap(),
        "emailNotifications": Map.from(emailNotifications).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "pushNotifications": Map.from(pushNotifications).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "suppressModals": suppressModals.toMap(),
        "tasks": tasks.toMap(),
        "dayStart": dayStart,
        "size": size,
        "hideHeader": hideHeader,
        "skin": skin,
        "shirt": shirt,
        "timezoneOffset": timezoneOffset,
        "sound": sound,
        "chair": chair,
        "allocationMode": allocationMode,
        "autoEquip": autoEquip,
        "dateFormat": dateFormat,
        "sleep": sleep,
        "stickyHeader": stickyHeader,
        "disableClasses": disableClasses,
        "newTaskEdit": newTaskEdit,
        "dailyDueDefaultView": dailyDueDefaultView,
        "advancedCollapsed": advancedCollapsed,
        "toolbarCollapsed": toolbarCollapsed,
        "reverseChatOrder": reverseChatOrder,
        "displayInviteToPartyWhenPartyIs1": displayInviteToPartyWhenPartyIs1,
        "improvementCategories": List<dynamic>.from(improvementCategories.map((x) => x)),
        "language": language,
        "webhooks": webhooks.toMap(),
        "background": background,
        "timezoneOffsetAtLastCron": timezoneOffsetAtLastCron,
    };
}

class Hair {
    Hair({
        required this.color,
        required this.base,
        required this.bangs,
        required this.beard,
        required this.mustache,
        required this.flower,
    });

    final String color;
    final int base;
    final int bangs;
    final int beard;
    final int mustache;
    final int flower;

    factory Hair.fromJson(String str) => Hair.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Hair.fromMap(Map<String, dynamic> json) => Hair(
        color: json["color"],
        base: json["base"],
        bangs: json["bangs"],
        beard: json["beard"],
        mustache: json["mustache"],
        flower: json["flower"],
    );

    Map<String, dynamic> toMap() => {
        "color": color,
        "base": base,
        "bangs": bangs,
        "beard": beard,
        "mustache": mustache,
        "flower": flower,
    };
}

class SuppressModals {
    SuppressModals({
        required this.levelUp,
        required this.hatchPet,
        required this.raisePet,
        required this.streak,
    });

    final bool levelUp;
    final bool hatchPet;
    final bool raisePet;
    final bool streak;

    factory SuppressModals.fromJson(String str) => SuppressModals.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory SuppressModals.fromMap(Map<String, dynamic> json) => SuppressModals(
        levelUp: json["levelUp"],
        hatchPet: json["hatchPet"],
        raisePet: json["raisePet"],
        streak: json["streak"],
    );

    Map<String, dynamic> toMap() => {
        "levelUp": levelUp,
        "hatchPet": hatchPet,
        "raisePet": raisePet,
        "streak": streak,
    };
}

class Tasks {
    Tasks({
        required this.groupByChallenge,
        required this.confirmScoreNotes,
    });

    final bool groupByChallenge;
    final bool confirmScoreNotes;

    factory Tasks.fromJson(String str) => Tasks.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Tasks.fromMap(Map<String, dynamic> json) => Tasks(
        groupByChallenge: json["groupByChallenge"],
        confirmScoreNotes: json["confirmScoreNotes"],
    );

    Map<String, dynamic> toMap() => {
        "groupByChallenge": groupByChallenge,
        "confirmScoreNotes": confirmScoreNotes,
    };
}

class Profile {
    Profile({
        required this.name,
    });

    final String name;

    factory Profile.fromJson(String str) => Profile.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Profile.fromMap(Map<String, dynamic> json) => Profile(
        name: json["name"],
    );

    Map<String, dynamic> toMap() => {
        "name": name,
    };
}

class Purchased {
    Purchased({
        required this.ads,
        required this.txnCount,
        required this.skin,
        required this.hair,
        required this.shirt,
        required this.background,
        required this.plan,
    });

    final bool ads;
    final int txnCount;
    final Backer skin;
    final Backer hair;
    final Backer shirt;
    final Background background;
    final Plan plan;

    factory Purchased.fromJson(String str) => Purchased.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Purchased.fromMap(Map<String, dynamic> json) => Purchased(
        ads: json["ads"],
        txnCount: json["txnCount"],
        skin: Backer.fromMap(json["skin"]),
        hair: Backer.fromMap(json["hair"]),
        shirt: Backer.fromMap(json["shirt"]),
        background: Background.fromMap(json["background"]),
        plan: Plan.fromMap(json["plan"]),
    );

    Map<String, dynamic> toMap() => {
        "ads": ads,
        "txnCount": txnCount,
        "skin": skin.toMap(),
        "hair": hair.toMap(),
        "shirt": shirt.toMap(),
        "background": background.toMap(),
        "plan": plan.toMap(),
    };
}

class Background {
    Background({
        required this.violet,
        required this.blue,
        required this.green,
        required this.purple,
        required this.red,
        required this.yellow,
    });

    final bool violet;
    final bool blue;
    final bool green;
    final bool purple;
    final bool red;
    final bool yellow;

    factory Background.fromJson(String str) => Background.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Background.fromMap(Map<String, dynamic> json) => Background(
        violet: json["violet"],
        blue: json["blue"],
        green: json["green"],
        purple: json["purple"],
        red: json["red"],
        yellow: json["yellow"],
    );

    Map<String, dynamic> toMap() => {
        "violet": violet,
        "blue": blue,
        "green": green,
        "purple": purple,
        "red": red,
        "yellow": yellow,
    };
}

class Plan {
    Plan({
        required this.consecutive,
        required this.quantity,
        required this.extraMonths,
        required this.gemsBought,
        required this.mysteryItems,
        required this.dateUpdated,
    });

    final Consecutive consecutive;
    final int quantity;
    final int extraMonths;
    final int gemsBought;
    final List<dynamic> mysteryItems;
    final DateTime dateUpdated;

    factory Plan.fromJson(String str) => Plan.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Plan.fromMap(Map<String, dynamic> json) => Plan(
        consecutive: Consecutive.fromMap(json["consecutive"]),
        quantity: json["quantity"],
        extraMonths: json["extraMonths"],
        gemsBought: json["gemsBought"],
        mysteryItems: List<dynamic>.from(json["mysteryItems"].map((x) => x)),
        dateUpdated: DateTime.parse(json["dateUpdated"]),
    );

    Map<String, dynamic> toMap() => {
        "consecutive": consecutive.toMap(),
        "quantity": quantity,
        "extraMonths": extraMonths,
        "gemsBought": gemsBought,
        "mysteryItems": List<dynamic>.from(mysteryItems.map((x) => x)),
        "dateUpdated": dateUpdated.toIso8601String(),
    };
}

class Consecutive {
    Consecutive({
        required this.count,
        required this.offset,
        required this.gemCapExtra,
        required this.trinkets,
    });

    final int count;
    final int offset;
    final int gemCapExtra;
    final int trinkets;

    factory Consecutive.fromJson(String str) => Consecutive.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Consecutive.fromMap(Map<String, dynamic> json) => Consecutive(
        count: json["count"],
        offset: json["offset"],
        gemCapExtra: json["gemCapExtra"],
        trinkets: json["trinkets"],
    );

    Map<String, dynamic> toMap() => {
        "count": count,
        "offset": offset,
        "gemCapExtra": gemCapExtra,
        "trinkets": trinkets,
    };
}

class PushDevice {
    PushDevice({
        required this.regId,
        required this.type,
        required this.createdAt,
        required this.updatedAt,
    });

    final String regId;
    final String type;
    final DateTime createdAt;
    final DateTime updatedAt;

    factory PushDevice.fromJson(String str) => PushDevice.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory PushDevice.fromMap(Map<String, dynamic> json) => PushDevice(
        regId: json["regId"],
        type: json["type"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
    );

    Map<String, dynamic> toMap() => {
        "regId": regId,
        "type": type,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
    };
}

class Stats {
    Stats({
        required this.buffs,
        required this.training,
        required this.hp,
        required this.mp,
        required this.exp,
        required this.gp,
        required this.lvl,
        required this.statsClass,
        required this.points,
        required this.str,
        required this.con,
        required this.statsInt,
        required this.per,
        required this.toNextLevel,
        required this.maxHealth,
        required this.maxMp,
    });

    final Buffs buffs;
    final Training training;
    final int hp;
    final int mp;
    final int exp;
    final double gp;
    final int lvl;
    final String statsClass;
    final int points;
    final int str;
    final int con;
    final int statsInt;
    final int per;
    final int toNextLevel;
    final int maxHealth;
    final int maxMp;

    factory Stats.fromJson(String str) => Stats.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Stats.fromMap(Map<String, dynamic> json) => Stats(
        buffs: Buffs.fromMap(json["buffs"]),
        training: Training.fromMap(json["training"]),
        hp: json["hp"].toInt(),
        mp: json["mp"].toInt(),
        exp: json["exp"].toInt(),
        gp: json["gp"].toDouble(),
        lvl: json["lvl"].toInt(),
        statsClass: json["class"],
        points: json["points"].toInt(),
        str: json["str"].toInt(),
        con: json["con"].toInt(),
        statsInt: json["int"].toInt(),
        per: json["per"].toInt(),
        toNextLevel: json["toNextLevel"].toInt(),
        maxHealth: json["maxHealth"].toInt(),
        maxMp: json["maxMP"].toInt(),
    );

    Map<String, dynamic> toMap() => {
        "buffs": buffs.toMap(),
        "training": training.toMap(),
        "hp": hp,
        "mp": mp,
        "exp": exp,
        "gp": gp,
        "lvl": lvl,
        "class": statsClass,
        "points": points,
        "str": str,
        "con": con,
        "int": statsInt,
        "per": per,
        "toNextLevel": toNextLevel,
        "maxHealth": maxHealth,
        "maxMP": maxMp,
    };
}

class Buffs {
    Buffs({
        required this.str,
        required this.buffsInt,
        required this.per,
        required this.con,
        required this.stealth,
        required this.streaks,
        required this.snowball,
        required this.spookySparkles,
        required this.shinySeed,
        required this.seafoam,
    });

    final int str;
    final int buffsInt;
    final int per;
    final int con;
    final int stealth;
    final bool streaks;
    final bool snowball;
    final bool spookySparkles;
    final bool shinySeed;
    final bool seafoam;

    factory Buffs.fromJson(String str) => Buffs.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Buffs.fromMap(Map<String, dynamic> json) => Buffs(
        str: json["str"],
        buffsInt: json["int"],
        per: json["per"],
        con: json["con"],
        stealth: json["stealth"],
        streaks: json["streaks"],
        snowball: json["snowball"],
        spookySparkles: json["spookySparkles"],
        shinySeed: json["shinySeed"],
        seafoam: json["seafoam"],
    );

    Map<String, dynamic> toMap() => {
        "str": str,
        "int": buffsInt,
        "per": per,
        "con": con,
        "stealth": stealth,
        "streaks": streaks,
        "snowball": snowball,
        "spookySparkles": spookySparkles,
        "shinySeed": shinySeed,
        "seafoam": seafoam,
    };
}

class Training {
    Training({
        required this.trainingInt,
        required this.per,
        required this.str,
        required this.con,
    });

    final int trainingInt;
    final int per;
    final int str;
    final int con;

    factory Training.fromJson(String str) => Training.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Training.fromMap(Map<String, dynamic> json) => Training(
        trainingInt: (json["int"]).toInt(),
        per: (json["per"]).toInt(),
        str: (json["str"]).toInt(),
        con: (json["con"]).toInt(),
    );

    Map<String, dynamic> toMap() => {
        "int": trainingInt,
        "per": per,
        "str": str,
        "con": con,
    };
}

class Tag {
    Tag({
        required this.name,
        required this.id,
        required this.challenge,
    });

    final String name;
    final String id;
    final bool? challenge;

    factory Tag.fromJson(String str) => Tag.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Tag.fromMap(Map<String, dynamic> json) => Tag(
        name: json["name"],
        id: json["id"],
        challenge: json["challenge"] == null ? null : json["challenge"],
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "id": id,
        "challenge": challenge == null ? null : challenge,
    };
}

class TasksOrder {
    TasksOrder({
        required this.habits,
        required this.dailys,
        required this.todos,
        required this.rewards,
    });

    final List<String> habits;
    final List<String> dailys;
    final List<String> todos;
    final List<String> rewards;

    factory TasksOrder.fromJson(String str) => TasksOrder.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory TasksOrder.fromMap(Map<String, dynamic> json) => TasksOrder(
        habits: List<String>.from(json["habits"].map((x) => x)),
        dailys: List<String>.from(json["dailys"].map((x) => x)),
        todos: List<String>.from(json["todos"].map((x) => x)),
        rewards: List<String>.from(json["rewards"].map((x) => x)),
    );

    Map<String, dynamic> toMap() => {
        "habits": List<dynamic>.from(habits.map((x) => x)),
        "dailys": List<dynamic>.from(dailys.map((x) => x)),
        "todos": List<dynamic>.from(todos.map((x) => x)),
        "rewards": List<dynamic>.from(rewards.map((x) => x)),
    };
}
