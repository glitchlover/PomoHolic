// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomoticaUserModel.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetPomoticaUserModelCollection on Isar {
  IsarCollection<PomoticaUserModel> get pomoticaUserModels => getCollection();
}

const PomoticaUserModelSchema = CollectionSchema(
  name: 'PomoticaUserModel',
  schema:
      '{"name":"PomoticaUserModel","idName":"id","properties":[{"name":"bigBreakTime","type":"Long"},{"name":"breakTime","type":"Long"},{"name":"currentActiveTaskId","type":"Long"},{"name":"currentSession","type":"Long"},{"name":"currentStatus","type":"Long"},{"name":"defaultWorkingTime","type":"Long"},{"name":"exp","type":"Long"},{"name":"hashCode","type":"Long"},{"name":"heart","type":"Long"},{"name":"level","type":"Long"},{"name":"numberOfSessions","type":"Long"},{"name":"pomo","type":"Long"},{"name":"pomoCoins","type":"Long"},{"name":"pomoGems","type":"Long"},{"name":"streak","type":"Long"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'bigBreakTime': 0,
    'breakTime': 1,
    'currentActiveTaskId': 2,
    'currentSession': 3,
    'currentStatus': 4,
    'defaultWorkingTime': 5,
    'exp': 6,
    'hashCode': 7,
    'heart': 8,
    'level': 9,
    'numberOfSessions': 10,
    'pomo': 11,
    'pomoCoins': 12,
    'pomoGems': 13,
    'streak': 14
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _pomoticaUserModelGetId,
  setId: _pomoticaUserModelSetId,
  getLinks: _pomoticaUserModelGetLinks,
  attachLinks: _pomoticaUserModelAttachLinks,
  serializeNative: _pomoticaUserModelSerializeNative,
  deserializeNative: _pomoticaUserModelDeserializeNative,
  deserializePropNative: _pomoticaUserModelDeserializePropNative,
  serializeWeb: _pomoticaUserModelSerializeWeb,
  deserializeWeb: _pomoticaUserModelDeserializeWeb,
  deserializePropWeb: _pomoticaUserModelDeserializePropWeb,
  version: 3,
);

int? _pomoticaUserModelGetId(PomoticaUserModel object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _pomoticaUserModelSetId(PomoticaUserModel object, int id) {
  object.id = id;
}

List<IsarLinkBase> _pomoticaUserModelGetLinks(PomoticaUserModel object) {
  return [];
}

const _pomoticaUserModelPomodoroStatusConverter = PomodoroStatusConverter();

void _pomoticaUserModelSerializeNative(
    IsarCollection<PomoticaUserModel> collection,
    IsarRawObject rawObj,
    PomoticaUserModel object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.bigBreakTime;
  final _bigBreakTime = value0;
  final value1 = object.breakTime;
  final _breakTime = value1;
  final value2 = object.currentActiveTaskId;
  final _currentActiveTaskId = value2;
  final value3 = object.currentSession;
  final _currentSession = value3;
  final value4 =
      _pomoticaUserModelPomodoroStatusConverter.toIsar(object.currentStatus);
  final _currentStatus = value4;
  final value5 = object.defaultWorkingTime;
  final _defaultWorkingTime = value5;
  final value6 = object.exp;
  final _exp = value6;
  final value7 = object.hashCode;
  final _hashCode = value7;
  final value8 = object.heart;
  final _heart = value8;
  final value9 = object.level;
  final _level = value9;
  final value10 = object.numberOfSessions;
  final _numberOfSessions = value10;
  final value11 = object.pomo;
  final _pomo = value11;
  final value12 = object.pomoCoins;
  final _pomoCoins = value12;
  final value13 = object.pomoGems;
  final _pomoGems = value13;
  final value14 = object.streak;
  final _streak = value14;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeLong(offsets[0], _bigBreakTime);
  writer.writeLong(offsets[1], _breakTime);
  writer.writeLong(offsets[2], _currentActiveTaskId);
  writer.writeLong(offsets[3], _currentSession);
  writer.writeLong(offsets[4], _currentStatus);
  writer.writeLong(offsets[5], _defaultWorkingTime);
  writer.writeLong(offsets[6], _exp);
  writer.writeLong(offsets[7], _hashCode);
  writer.writeLong(offsets[8], _heart);
  writer.writeLong(offsets[9], _level);
  writer.writeLong(offsets[10], _numberOfSessions);
  writer.writeLong(offsets[11], _pomo);
  writer.writeLong(offsets[12], _pomoCoins);
  writer.writeLong(offsets[13], _pomoGems);
  writer.writeLong(offsets[14], _streak);
}

PomoticaUserModel _pomoticaUserModelDeserializeNative(
    IsarCollection<PomoticaUserModel> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = PomoticaUserModel(
    bigBreakTime: reader.readLong(offsets[0]),
    breakTime: reader.readLong(offsets[1]),
    currentActiveTaskId: reader.readLongOrNull(offsets[2]),
    currentSession: reader.readLong(offsets[3]),
    currentStatus: _pomoticaUserModelPomodoroStatusConverter
        .fromIsar(reader.readLong(offsets[4])),
    defaultWorkingTime: reader.readLong(offsets[5]),
    exp: reader.readLong(offsets[6]),
    heart: reader.readLong(offsets[8]),
    id: id,
    level: reader.readLong(offsets[9]),
    numberOfSessions: reader.readLong(offsets[10]),
    pomo: reader.readLong(offsets[11]),
    pomoCoins: reader.readLong(offsets[12]),
    pomoGems: reader.readLong(offsets[13]),
    streak: reader.readLong(offsets[14]),
  );
  return object;
}

P _pomoticaUserModelDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (_pomoticaUserModelPomodoroStatusConverter
          .fromIsar(reader.readLong(offset))) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readLong(offset)) as P;
    case 11:
      return (reader.readLong(offset)) as P;
    case 12:
      return (reader.readLong(offset)) as P;
    case 13:
      return (reader.readLong(offset)) as P;
    case 14:
      return (reader.readLong(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _pomoticaUserModelSerializeWeb(
    IsarCollection<PomoticaUserModel> collection, PomoticaUserModel object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'bigBreakTime', object.bigBreakTime);
  IsarNative.jsObjectSet(jsObj, 'breakTime', object.breakTime);
  IsarNative.jsObjectSet(
      jsObj, 'currentActiveTaskId', object.currentActiveTaskId);
  IsarNative.jsObjectSet(jsObj, 'currentSession', object.currentSession);
  IsarNative.jsObjectSet(jsObj, 'currentStatus',
      _pomoticaUserModelPomodoroStatusConverter.toIsar(object.currentStatus));
  IsarNative.jsObjectSet(
      jsObj, 'defaultWorkingTime', object.defaultWorkingTime);
  IsarNative.jsObjectSet(jsObj, 'exp', object.exp);
  IsarNative.jsObjectSet(jsObj, 'hashCode', object.hashCode);
  IsarNative.jsObjectSet(jsObj, 'heart', object.heart);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'level', object.level);
  IsarNative.jsObjectSet(jsObj, 'numberOfSessions', object.numberOfSessions);
  IsarNative.jsObjectSet(jsObj, 'pomo', object.pomo);
  IsarNative.jsObjectSet(jsObj, 'pomoCoins', object.pomoCoins);
  IsarNative.jsObjectSet(jsObj, 'pomoGems', object.pomoGems);
  IsarNative.jsObjectSet(jsObj, 'streak', object.streak);
  return jsObj;
}

PomoticaUserModel _pomoticaUserModelDeserializeWeb(
    IsarCollection<PomoticaUserModel> collection, dynamic jsObj) {
  final object = PomoticaUserModel(
    bigBreakTime: IsarNative.jsObjectGet(jsObj, 'bigBreakTime') ??
        double.negativeInfinity,
    breakTime:
        IsarNative.jsObjectGet(jsObj, 'breakTime') ?? double.negativeInfinity,
    currentActiveTaskId: IsarNative.jsObjectGet(jsObj, 'currentActiveTaskId'),
    currentSession: IsarNative.jsObjectGet(jsObj, 'currentSession') ??
        double.negativeInfinity,
    currentStatus: _pomoticaUserModelPomodoroStatusConverter.fromIsar(
        IsarNative.jsObjectGet(jsObj, 'currentStatus') ??
            double.negativeInfinity),
    defaultWorkingTime: IsarNative.jsObjectGet(jsObj, 'defaultWorkingTime') ??
        double.negativeInfinity,
    exp: IsarNative.jsObjectGet(jsObj, 'exp') ?? double.negativeInfinity,
    heart: IsarNative.jsObjectGet(jsObj, 'heart') ?? double.negativeInfinity,
    id: IsarNative.jsObjectGet(jsObj, 'id'),
    level: IsarNative.jsObjectGet(jsObj, 'level') ?? double.negativeInfinity,
    numberOfSessions: IsarNative.jsObjectGet(jsObj, 'numberOfSessions') ??
        double.negativeInfinity,
    pomo: IsarNative.jsObjectGet(jsObj, 'pomo') ?? double.negativeInfinity,
    pomoCoins:
        IsarNative.jsObjectGet(jsObj, 'pomoCoins') ?? double.negativeInfinity,
    pomoGems:
        IsarNative.jsObjectGet(jsObj, 'pomoGems') ?? double.negativeInfinity,
    streak: IsarNative.jsObjectGet(jsObj, 'streak') ?? double.negativeInfinity,
  );
  return object;
}

P _pomoticaUserModelDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'bigBreakTime':
      return (IsarNative.jsObjectGet(jsObj, 'bigBreakTime') ??
          double.negativeInfinity) as P;
    case 'breakTime':
      return (IsarNative.jsObjectGet(jsObj, 'breakTime') ??
          double.negativeInfinity) as P;
    case 'currentActiveTaskId':
      return (IsarNative.jsObjectGet(jsObj, 'currentActiveTaskId')) as P;
    case 'currentSession':
      return (IsarNative.jsObjectGet(jsObj, 'currentSession') ??
          double.negativeInfinity) as P;
    case 'currentStatus':
      return (_pomoticaUserModelPomodoroStatusConverter.fromIsar(
          IsarNative.jsObjectGet(jsObj, 'currentStatus') ??
              double.negativeInfinity)) as P;
    case 'defaultWorkingTime':
      return (IsarNative.jsObjectGet(jsObj, 'defaultWorkingTime') ??
          double.negativeInfinity) as P;
    case 'exp':
      return (IsarNative.jsObjectGet(jsObj, 'exp') ?? double.negativeInfinity)
          as P;
    case 'hashCode':
      return (IsarNative.jsObjectGet(jsObj, 'hashCode') ??
          double.negativeInfinity) as P;
    case 'heart':
      return (IsarNative.jsObjectGet(jsObj, 'heart') ?? double.negativeInfinity)
          as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'level':
      return (IsarNative.jsObjectGet(jsObj, 'level') ?? double.negativeInfinity)
          as P;
    case 'numberOfSessions':
      return (IsarNative.jsObjectGet(jsObj, 'numberOfSessions') ??
          double.negativeInfinity) as P;
    case 'pomo':
      return (IsarNative.jsObjectGet(jsObj, 'pomo') ?? double.negativeInfinity)
          as P;
    case 'pomoCoins':
      return (IsarNative.jsObjectGet(jsObj, 'pomoCoins') ??
          double.negativeInfinity) as P;
    case 'pomoGems':
      return (IsarNative.jsObjectGet(jsObj, 'pomoGems') ??
          double.negativeInfinity) as P;
    case 'streak':
      return (IsarNative.jsObjectGet(jsObj, 'streak') ??
          double.negativeInfinity) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _pomoticaUserModelAttachLinks(
    IsarCollection col, int id, PomoticaUserModel object) {}

extension PomoticaUserModelQueryWhereSort
    on QueryBuilder<PomoticaUserModel, PomoticaUserModel, QWhere> {
  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension PomoticaUserModelQueryWhere
    on QueryBuilder<PomoticaUserModel, PomoticaUserModel, QWhereClause> {
  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterWhereClause>
      idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterWhereClause>
      idNotEqualTo(int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      );
    }
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterWhereClause>
      idGreaterThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterWhereClause>
      idLessThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterWhereClause>
      idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerId,
      includeLower: includeLower,
      upper: upperId,
      includeUpper: includeUpper,
    ));
  }
}

extension PomoticaUserModelQueryFilter
    on QueryBuilder<PomoticaUserModel, PomoticaUserModel, QFilterCondition> {
  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      bigBreakTimeEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'bigBreakTime',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      bigBreakTimeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'bigBreakTime',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      bigBreakTimeLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'bigBreakTime',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      bigBreakTimeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'bigBreakTime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      breakTimeEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'breakTime',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      breakTimeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'breakTime',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      breakTimeLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'breakTime',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      breakTimeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'breakTime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      currentActiveTaskIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'currentActiveTaskId',
      value: null,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      currentActiveTaskIdEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'currentActiveTaskId',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      currentActiveTaskIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'currentActiveTaskId',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      currentActiveTaskIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'currentActiveTaskId',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      currentActiveTaskIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'currentActiveTaskId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      currentSessionEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'currentSession',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      currentSessionGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'currentSession',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      currentSessionLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'currentSession',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      currentSessionBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'currentSession',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      currentStatusEqualTo(PomodoroStatus value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'currentStatus',
      value: _pomoticaUserModelPomodoroStatusConverter.toIsar(value),
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      currentStatusGreaterThan(
    PomodoroStatus value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'currentStatus',
      value: _pomoticaUserModelPomodoroStatusConverter.toIsar(value),
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      currentStatusLessThan(
    PomodoroStatus value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'currentStatus',
      value: _pomoticaUserModelPomodoroStatusConverter.toIsar(value),
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      currentStatusBetween(
    PomodoroStatus lower,
    PomodoroStatus upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'currentStatus',
      lower: _pomoticaUserModelPomodoroStatusConverter.toIsar(lower),
      includeLower: includeLower,
      upper: _pomoticaUserModelPomodoroStatusConverter.toIsar(upper),
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      defaultWorkingTimeEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'defaultWorkingTime',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      defaultWorkingTimeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'defaultWorkingTime',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      defaultWorkingTimeLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'defaultWorkingTime',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      defaultWorkingTimeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'defaultWorkingTime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      expEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'exp',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      expGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'exp',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      expLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'exp',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      expBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'exp',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'hashCode',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      heartEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'heart',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      heartGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'heart',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      heartLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'heart',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      heartBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'heart',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      levelEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'level',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      levelGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'level',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      levelLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'level',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      levelBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'level',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      numberOfSessionsEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'numberOfSessions',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      numberOfSessionsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'numberOfSessions',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      numberOfSessionsLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'numberOfSessions',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      numberOfSessionsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'numberOfSessions',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      pomoEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'pomo',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      pomoGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'pomo',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      pomoLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'pomo',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      pomoBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'pomo',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      pomoCoinsEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'pomoCoins',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      pomoCoinsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'pomoCoins',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      pomoCoinsLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'pomoCoins',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      pomoCoinsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'pomoCoins',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      pomoGemsEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'pomoGems',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      pomoGemsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'pomoGems',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      pomoGemsLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'pomoGems',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      pomoGemsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'pomoGems',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      streakEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'streak',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      streakGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'streak',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      streakLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'streak',
      value: value,
    ));
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterFilterCondition>
      streakBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'streak',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension PomoticaUserModelQueryLinks
    on QueryBuilder<PomoticaUserModel, PomoticaUserModel, QFilterCondition> {}

extension PomoticaUserModelQueryWhereSortBy
    on QueryBuilder<PomoticaUserModel, PomoticaUserModel, QSortBy> {
  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByBigBreakTime() {
    return addSortByInternal('bigBreakTime', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByBigBreakTimeDesc() {
    return addSortByInternal('bigBreakTime', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByBreakTime() {
    return addSortByInternal('breakTime', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByBreakTimeDesc() {
    return addSortByInternal('breakTime', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByCurrentActiveTaskId() {
    return addSortByInternal('currentActiveTaskId', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByCurrentActiveTaskIdDesc() {
    return addSortByInternal('currentActiveTaskId', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByCurrentSession() {
    return addSortByInternal('currentSession', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByCurrentSessionDesc() {
    return addSortByInternal('currentSession', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByCurrentStatus() {
    return addSortByInternal('currentStatus', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByCurrentStatusDesc() {
    return addSortByInternal('currentStatus', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByDefaultWorkingTime() {
    return addSortByInternal('defaultWorkingTime', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByDefaultWorkingTimeDesc() {
    return addSortByInternal('defaultWorkingTime', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy> sortByExp() {
    return addSortByInternal('exp', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByExpDesc() {
    return addSortByInternal('exp', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByHeart() {
    return addSortByInternal('heart', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByHeartDesc() {
    return addSortByInternal('heart', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByLevel() {
    return addSortByInternal('level', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByLevelDesc() {
    return addSortByInternal('level', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByNumberOfSessions() {
    return addSortByInternal('numberOfSessions', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByNumberOfSessionsDesc() {
    return addSortByInternal('numberOfSessions', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByPomo() {
    return addSortByInternal('pomo', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByPomoDesc() {
    return addSortByInternal('pomo', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByPomoCoins() {
    return addSortByInternal('pomoCoins', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByPomoCoinsDesc() {
    return addSortByInternal('pomoCoins', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByPomoGems() {
    return addSortByInternal('pomoGems', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByPomoGemsDesc() {
    return addSortByInternal('pomoGems', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByStreak() {
    return addSortByInternal('streak', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      sortByStreakDesc() {
    return addSortByInternal('streak', Sort.desc);
  }
}

extension PomoticaUserModelQueryWhereSortThenBy
    on QueryBuilder<PomoticaUserModel, PomoticaUserModel, QSortThenBy> {
  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByBigBreakTime() {
    return addSortByInternal('bigBreakTime', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByBigBreakTimeDesc() {
    return addSortByInternal('bigBreakTime', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByBreakTime() {
    return addSortByInternal('breakTime', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByBreakTimeDesc() {
    return addSortByInternal('breakTime', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByCurrentActiveTaskId() {
    return addSortByInternal('currentActiveTaskId', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByCurrentActiveTaskIdDesc() {
    return addSortByInternal('currentActiveTaskId', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByCurrentSession() {
    return addSortByInternal('currentSession', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByCurrentSessionDesc() {
    return addSortByInternal('currentSession', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByCurrentStatus() {
    return addSortByInternal('currentStatus', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByCurrentStatusDesc() {
    return addSortByInternal('currentStatus', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByDefaultWorkingTime() {
    return addSortByInternal('defaultWorkingTime', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByDefaultWorkingTimeDesc() {
    return addSortByInternal('defaultWorkingTime', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy> thenByExp() {
    return addSortByInternal('exp', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByExpDesc() {
    return addSortByInternal('exp', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByHeart() {
    return addSortByInternal('heart', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByHeartDesc() {
    return addSortByInternal('heart', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByLevel() {
    return addSortByInternal('level', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByLevelDesc() {
    return addSortByInternal('level', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByNumberOfSessions() {
    return addSortByInternal('numberOfSessions', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByNumberOfSessionsDesc() {
    return addSortByInternal('numberOfSessions', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByPomo() {
    return addSortByInternal('pomo', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByPomoDesc() {
    return addSortByInternal('pomo', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByPomoCoins() {
    return addSortByInternal('pomoCoins', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByPomoCoinsDesc() {
    return addSortByInternal('pomoCoins', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByPomoGems() {
    return addSortByInternal('pomoGems', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByPomoGemsDesc() {
    return addSortByInternal('pomoGems', Sort.desc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByStreak() {
    return addSortByInternal('streak', Sort.asc);
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QAfterSortBy>
      thenByStreakDesc() {
    return addSortByInternal('streak', Sort.desc);
  }
}

extension PomoticaUserModelQueryWhereDistinct
    on QueryBuilder<PomoticaUserModel, PomoticaUserModel, QDistinct> {
  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QDistinct>
      distinctByBigBreakTime() {
    return addDistinctByInternal('bigBreakTime');
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QDistinct>
      distinctByBreakTime() {
    return addDistinctByInternal('breakTime');
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QDistinct>
      distinctByCurrentActiveTaskId() {
    return addDistinctByInternal('currentActiveTaskId');
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QDistinct>
      distinctByCurrentSession() {
    return addDistinctByInternal('currentSession');
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QDistinct>
      distinctByCurrentStatus() {
    return addDistinctByInternal('currentStatus');
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QDistinct>
      distinctByDefaultWorkingTime() {
    return addDistinctByInternal('defaultWorkingTime');
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QDistinct>
      distinctByExp() {
    return addDistinctByInternal('exp');
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QDistinct>
      distinctByHashCode() {
    return addDistinctByInternal('hashCode');
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QDistinct>
      distinctByHeart() {
    return addDistinctByInternal('heart');
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QDistinct>
      distinctByLevel() {
    return addDistinctByInternal('level');
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QDistinct>
      distinctByNumberOfSessions() {
    return addDistinctByInternal('numberOfSessions');
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QDistinct>
      distinctByPomo() {
    return addDistinctByInternal('pomo');
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QDistinct>
      distinctByPomoCoins() {
    return addDistinctByInternal('pomoCoins');
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QDistinct>
      distinctByPomoGems() {
    return addDistinctByInternal('pomoGems');
  }

  QueryBuilder<PomoticaUserModel, PomoticaUserModel, QDistinct>
      distinctByStreak() {
    return addDistinctByInternal('streak');
  }
}

extension PomoticaUserModelQueryProperty
    on QueryBuilder<PomoticaUserModel, PomoticaUserModel, QQueryProperty> {
  QueryBuilder<PomoticaUserModel, int, QQueryOperations>
      bigBreakTimeProperty() {
    return addPropertyNameInternal('bigBreakTime');
  }

  QueryBuilder<PomoticaUserModel, int, QQueryOperations> breakTimeProperty() {
    return addPropertyNameInternal('breakTime');
  }

  QueryBuilder<PomoticaUserModel, int?, QQueryOperations>
      currentActiveTaskIdProperty() {
    return addPropertyNameInternal('currentActiveTaskId');
  }

  QueryBuilder<PomoticaUserModel, int, QQueryOperations>
      currentSessionProperty() {
    return addPropertyNameInternal('currentSession');
  }

  QueryBuilder<PomoticaUserModel, PomodoroStatus, QQueryOperations>
      currentStatusProperty() {
    return addPropertyNameInternal('currentStatus');
  }

  QueryBuilder<PomoticaUserModel, int, QQueryOperations>
      defaultWorkingTimeProperty() {
    return addPropertyNameInternal('defaultWorkingTime');
  }

  QueryBuilder<PomoticaUserModel, int, QQueryOperations> expProperty() {
    return addPropertyNameInternal('exp');
  }

  QueryBuilder<PomoticaUserModel, int, QQueryOperations> hashCodeProperty() {
    return addPropertyNameInternal('hashCode');
  }

  QueryBuilder<PomoticaUserModel, int, QQueryOperations> heartProperty() {
    return addPropertyNameInternal('heart');
  }

  QueryBuilder<PomoticaUserModel, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<PomoticaUserModel, int, QQueryOperations> levelProperty() {
    return addPropertyNameInternal('level');
  }

  QueryBuilder<PomoticaUserModel, int, QQueryOperations>
      numberOfSessionsProperty() {
    return addPropertyNameInternal('numberOfSessions');
  }

  QueryBuilder<PomoticaUserModel, int, QQueryOperations> pomoProperty() {
    return addPropertyNameInternal('pomo');
  }

  QueryBuilder<PomoticaUserModel, int, QQueryOperations> pomoCoinsProperty() {
    return addPropertyNameInternal('pomoCoins');
  }

  QueryBuilder<PomoticaUserModel, int, QQueryOperations> pomoGemsProperty() {
    return addPropertyNameInternal('pomoGems');
  }

  QueryBuilder<PomoticaUserModel, int, QQueryOperations> streakProperty() {
    return addPropertyNameInternal('streak');
  }
}
