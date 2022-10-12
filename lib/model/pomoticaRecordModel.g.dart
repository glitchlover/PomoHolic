// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomoticaRecordModel.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetPomoticaRecordModelCollection on Isar {
  IsarCollection<PomoticaRecordModel> get pomoticaRecordModels =>
      getCollection();
}

const PomoticaRecordModelSchema = CollectionSchema(
  name: 'PomoticaRecordModel',
  schema:
      '{"name":"PomoticaRecordModel","idName":"id","properties":[{"name":"date","type":"Long"},{"name":"endTime","type":"Long"},{"name":"hashCode","type":"Long"},{"name":"pomos","type":"Long"},{"name":"startTime","type":"Long"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'date': 0,
    'endTime': 1,
    'hashCode': 2,
    'pomos': 3,
    'startTime': 4
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _pomoticaRecordModelGetId,
  setId: _pomoticaRecordModelSetId,
  getLinks: _pomoticaRecordModelGetLinks,
  attachLinks: _pomoticaRecordModelAttachLinks,
  serializeNative: _pomoticaRecordModelSerializeNative,
  deserializeNative: _pomoticaRecordModelDeserializeNative,
  deserializePropNative: _pomoticaRecordModelDeserializePropNative,
  serializeWeb: _pomoticaRecordModelSerializeWeb,
  deserializeWeb: _pomoticaRecordModelDeserializeWeb,
  deserializePropWeb: _pomoticaRecordModelDeserializePropWeb,
  version: 3,
);

int? _pomoticaRecordModelGetId(PomoticaRecordModel object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _pomoticaRecordModelSetId(PomoticaRecordModel object, int id) {
  object.id = id;
}

List<IsarLinkBase> _pomoticaRecordModelGetLinks(PomoticaRecordModel object) {
  return [];
}

void _pomoticaRecordModelSerializeNative(
    IsarCollection<PomoticaRecordModel> collection,
    IsarRawObject rawObj,
    PomoticaRecordModel object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.date;
  final _date = value0;
  final value1 = object.endTime;
  final _endTime = value1;
  final value2 = object.hashCode;
  final _hashCode = value2;
  final value3 = object.pomos;
  final _pomos = value3;
  final value4 = object.startTime;
  final _startTime = value4;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeDateTime(offsets[0], _date);
  writer.writeDateTime(offsets[1], _endTime);
  writer.writeLong(offsets[2], _hashCode);
  writer.writeLong(offsets[3], _pomos);
  writer.writeDateTime(offsets[4], _startTime);
}

PomoticaRecordModel _pomoticaRecordModelDeserializeNative(
    IsarCollection<PomoticaRecordModel> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = PomoticaRecordModel(
    date: reader.readDateTime(offsets[0]),
    endTime: reader.readDateTime(offsets[1]),
    id: id,
    pomos: reader.readLong(offsets[3]),
    startTime: reader.readDateTime(offsets[4]),
  );
  return object;
}

P _pomoticaRecordModelDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _pomoticaRecordModelSerializeWeb(
    IsarCollection<PomoticaRecordModel> collection,
    PomoticaRecordModel object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(
      jsObj, 'date', object.date.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(
      jsObj, 'endTime', object.endTime.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'hashCode', object.hashCode);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'pomos', object.pomos);
  IsarNative.jsObjectSet(
      jsObj, 'startTime', object.startTime.toUtc().millisecondsSinceEpoch);
  return jsObj;
}

PomoticaRecordModel _pomoticaRecordModelDeserializeWeb(
    IsarCollection<PomoticaRecordModel> collection, dynamic jsObj) {
  final object = PomoticaRecordModel(
    date: IsarNative.jsObjectGet(jsObj, 'date') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'date'),
                isUtc: true)
            .toLocal()
        : DateTime.fromMillisecondsSinceEpoch(0),
    endTime: IsarNative.jsObjectGet(jsObj, 'endTime') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'endTime'),
                isUtc: true)
            .toLocal()
        : DateTime.fromMillisecondsSinceEpoch(0),
    id: IsarNative.jsObjectGet(jsObj, 'id'),
    pomos: IsarNative.jsObjectGet(jsObj, 'pomos') ?? double.negativeInfinity,
    startTime: IsarNative.jsObjectGet(jsObj, 'startTime') != null
        ? DateTime.fromMillisecondsSinceEpoch(
                IsarNative.jsObjectGet(jsObj, 'startTime'),
                isUtc: true)
            .toLocal()
        : DateTime.fromMillisecondsSinceEpoch(0),
  );
  return object;
}

P _pomoticaRecordModelDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'date':
      return (IsarNative.jsObjectGet(jsObj, 'date') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'date'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'endTime':
      return (IsarNative.jsObjectGet(jsObj, 'endTime') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'endTime'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'hashCode':
      return (IsarNative.jsObjectGet(jsObj, 'hashCode') ??
          double.negativeInfinity) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'pomos':
      return (IsarNative.jsObjectGet(jsObj, 'pomos') ?? double.negativeInfinity)
          as P;
    case 'startTime':
      return (IsarNative.jsObjectGet(jsObj, 'startTime') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'startTime'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _pomoticaRecordModelAttachLinks(
    IsarCollection col, int id, PomoticaRecordModel object) {}

extension PomoticaRecordModelQueryWhereSort
    on QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QWhere> {
  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension PomoticaRecordModelQueryWhere
    on QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QWhereClause> {
  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterWhereClause>
      idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterWhereClause>
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

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterWhereClause>
      idGreaterThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterWhereClause>
      idLessThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterWhereClause>
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

extension PomoticaRecordModelQueryFilter on QueryBuilder<PomoticaRecordModel,
    PomoticaRecordModel, QFilterCondition> {
  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterFilterCondition>
      dateEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'date',
      value: value,
    ));
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterFilterCondition>
      dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'date',
      value: value,
    ));
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterFilterCondition>
      dateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'date',
      value: value,
    ));
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterFilterCondition>
      dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'date',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterFilterCondition>
      endTimeEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'endTime',
      value: value,
    ));
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterFilterCondition>
      endTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'endTime',
      value: value,
    ));
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterFilterCondition>
      endTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'endTime',
      value: value,
    ));
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterFilterCondition>
      endTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'endTime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterFilterCondition>
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

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterFilterCondition>
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

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterFilterCondition>
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

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterFilterCondition>
      idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterFilterCondition>
      idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterFilterCondition>
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

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterFilterCondition>
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

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterFilterCondition>
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

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterFilterCondition>
      pomosEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'pomos',
      value: value,
    ));
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterFilterCondition>
      pomosGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'pomos',
      value: value,
    ));
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterFilterCondition>
      pomosLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'pomos',
      value: value,
    ));
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterFilterCondition>
      pomosBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'pomos',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterFilterCondition>
      startTimeEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'startTime',
      value: value,
    ));
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterFilterCondition>
      startTimeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'startTime',
      value: value,
    ));
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterFilterCondition>
      startTimeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'startTime',
      value: value,
    ));
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterFilterCondition>
      startTimeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'startTime',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension PomoticaRecordModelQueryLinks on QueryBuilder<PomoticaRecordModel,
    PomoticaRecordModel, QFilterCondition> {}

extension PomoticaRecordModelQueryWhereSortBy
    on QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QSortBy> {
  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterSortBy>
      sortByDate() {
    return addSortByInternal('date', Sort.asc);
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterSortBy>
      sortByDateDesc() {
    return addSortByInternal('date', Sort.desc);
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterSortBy>
      sortByEndTime() {
    return addSortByInternal('endTime', Sort.asc);
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterSortBy>
      sortByEndTimeDesc() {
    return addSortByInternal('endTime', Sort.desc);
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterSortBy>
      sortByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterSortBy>
      sortByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterSortBy>
      sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterSortBy>
      sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterSortBy>
      sortByPomos() {
    return addSortByInternal('pomos', Sort.asc);
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterSortBy>
      sortByPomosDesc() {
    return addSortByInternal('pomos', Sort.desc);
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterSortBy>
      sortByStartTime() {
    return addSortByInternal('startTime', Sort.asc);
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterSortBy>
      sortByStartTimeDesc() {
    return addSortByInternal('startTime', Sort.desc);
  }
}

extension PomoticaRecordModelQueryWhereSortThenBy
    on QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QSortThenBy> {
  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterSortBy>
      thenByDate() {
    return addSortByInternal('date', Sort.asc);
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterSortBy>
      thenByDateDesc() {
    return addSortByInternal('date', Sort.desc);
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterSortBy>
      thenByEndTime() {
    return addSortByInternal('endTime', Sort.asc);
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterSortBy>
      thenByEndTimeDesc() {
    return addSortByInternal('endTime', Sort.desc);
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterSortBy>
      thenByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterSortBy>
      thenByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterSortBy>
      thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterSortBy>
      thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterSortBy>
      thenByPomos() {
    return addSortByInternal('pomos', Sort.asc);
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterSortBy>
      thenByPomosDesc() {
    return addSortByInternal('pomos', Sort.desc);
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterSortBy>
      thenByStartTime() {
    return addSortByInternal('startTime', Sort.asc);
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QAfterSortBy>
      thenByStartTimeDesc() {
    return addSortByInternal('startTime', Sort.desc);
  }
}

extension PomoticaRecordModelQueryWhereDistinct
    on QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QDistinct> {
  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QDistinct>
      distinctByDate() {
    return addDistinctByInternal('date');
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QDistinct>
      distinctByEndTime() {
    return addDistinctByInternal('endTime');
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QDistinct>
      distinctByHashCode() {
    return addDistinctByInternal('hashCode');
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QDistinct>
      distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QDistinct>
      distinctByPomos() {
    return addDistinctByInternal('pomos');
  }

  QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QDistinct>
      distinctByStartTime() {
    return addDistinctByInternal('startTime');
  }
}

extension PomoticaRecordModelQueryProperty
    on QueryBuilder<PomoticaRecordModel, PomoticaRecordModel, QQueryProperty> {
  QueryBuilder<PomoticaRecordModel, DateTime, QQueryOperations> dateProperty() {
    return addPropertyNameInternal('date');
  }

  QueryBuilder<PomoticaRecordModel, DateTime, QQueryOperations>
      endTimeProperty() {
    return addPropertyNameInternal('endTime');
  }

  QueryBuilder<PomoticaRecordModel, int, QQueryOperations> hashCodeProperty() {
    return addPropertyNameInternal('hashCode');
  }

  QueryBuilder<PomoticaRecordModel, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<PomoticaRecordModel, int, QQueryOperations> pomosProperty() {
    return addPropertyNameInternal('pomos');
  }

  QueryBuilder<PomoticaRecordModel, DateTime, QQueryOperations>
      startTimeProperty() {
    return addPropertyNameInternal('startTime');
  }
}
