// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_sync_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCalendarSyncModelCollection on Isar {
  IsarCollection<CalendarSyncModel> get calendarSyncModels => this.collection();
}

const CalendarSyncModelSchema = CollectionSchema(
  name: r'CalendarSyncModel',
  id: 6207863285446549887,
  properties: {
    r'googleEventId': PropertySchema(
      id: 0,
      name: r'googleEventId',
      type: IsarType.string,
    ),
    r'lastSync': PropertySchema(
      id: 1,
      name: r'lastSync',
      type: IsarType.dateTime,
    ),
    r'weddingId': PropertySchema(
      id: 2,
      name: r'weddingId',
      type: IsarType.string,
    )
  },
  estimateSize: _calendarSyncModelEstimateSize,
  serialize: _calendarSyncModelSerialize,
  deserialize: _calendarSyncModelDeserialize,
  deserializeProp: _calendarSyncModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'weddingId': IndexSchema(
      id: 6229457530397790908,
      name: r'weddingId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'weddingId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _calendarSyncModelGetId,
  getLinks: _calendarSyncModelGetLinks,
  attach: _calendarSyncModelAttach,
  version: '3.1.0+1',
);

int _calendarSyncModelEstimateSize(
  CalendarSyncModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.googleEventId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.weddingId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _calendarSyncModelSerialize(
  CalendarSyncModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.googleEventId);
  writer.writeDateTime(offsets[1], object.lastSync);
  writer.writeString(offsets[2], object.weddingId);
}

CalendarSyncModel _calendarSyncModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CalendarSyncModel(
    googleEventId: reader.readStringOrNull(offsets[0]),
    lastSync: reader.readDateTimeOrNull(offsets[1]),
    weddingId: reader.readStringOrNull(offsets[2]),
  );
  object.id = id;
  return object;
}

P _calendarSyncModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _calendarSyncModelGetId(CalendarSyncModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _calendarSyncModelGetLinks(
    CalendarSyncModel object) {
  return [];
}

void _calendarSyncModelAttach(
    IsarCollection<dynamic> col, Id id, CalendarSyncModel object) {
  object.id = id;
}

extension CalendarSyncModelByIndex on IsarCollection<CalendarSyncModel> {
  Future<CalendarSyncModel?> getByWeddingId(String? weddingId) {
    return getByIndex(r'weddingId', [weddingId]);
  }

  CalendarSyncModel? getByWeddingIdSync(String? weddingId) {
    return getByIndexSync(r'weddingId', [weddingId]);
  }

  Future<bool> deleteByWeddingId(String? weddingId) {
    return deleteByIndex(r'weddingId', [weddingId]);
  }

  bool deleteByWeddingIdSync(String? weddingId) {
    return deleteByIndexSync(r'weddingId', [weddingId]);
  }

  Future<List<CalendarSyncModel?>> getAllByWeddingId(
      List<String?> weddingIdValues) {
    final values = weddingIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'weddingId', values);
  }

  List<CalendarSyncModel?> getAllByWeddingIdSync(
      List<String?> weddingIdValues) {
    final values = weddingIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'weddingId', values);
  }

  Future<int> deleteAllByWeddingId(List<String?> weddingIdValues) {
    final values = weddingIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'weddingId', values);
  }

  int deleteAllByWeddingIdSync(List<String?> weddingIdValues) {
    final values = weddingIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'weddingId', values);
  }

  Future<Id> putByWeddingId(CalendarSyncModel object) {
    return putByIndex(r'weddingId', object);
  }

  Id putByWeddingIdSync(CalendarSyncModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'weddingId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByWeddingId(List<CalendarSyncModel> objects) {
    return putAllByIndex(r'weddingId', objects);
  }

  List<Id> putAllByWeddingIdSync(List<CalendarSyncModel> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'weddingId', objects, saveLinks: saveLinks);
  }
}

extension CalendarSyncModelQueryWhereSort
    on QueryBuilder<CalendarSyncModel, CalendarSyncModel, QWhere> {
  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CalendarSyncModelQueryWhere
    on QueryBuilder<CalendarSyncModel, CalendarSyncModel, QWhereClause> {
  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterWhereClause>
      weddingIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'weddingId',
        value: [null],
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterWhereClause>
      weddingIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'weddingId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterWhereClause>
      weddingIdEqualTo(String? weddingId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'weddingId',
        value: [weddingId],
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterWhereClause>
      weddingIdNotEqualTo(String? weddingId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'weddingId',
              lower: [],
              upper: [weddingId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'weddingId',
              lower: [weddingId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'weddingId',
              lower: [weddingId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'weddingId',
              lower: [],
              upper: [weddingId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension CalendarSyncModelQueryFilter
    on QueryBuilder<CalendarSyncModel, CalendarSyncModel, QFilterCondition> {
  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      googleEventIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'googleEventId',
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      googleEventIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'googleEventId',
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      googleEventIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'googleEventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      googleEventIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'googleEventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      googleEventIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'googleEventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      googleEventIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'googleEventId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      googleEventIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'googleEventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      googleEventIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'googleEventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      googleEventIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'googleEventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      googleEventIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'googleEventId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      googleEventIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'googleEventId',
        value: '',
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      googleEventIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'googleEventId',
        value: '',
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      lastSyncIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastSync',
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      lastSyncIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastSync',
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      lastSyncEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastSync',
        value: value,
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      lastSyncGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastSync',
        value: value,
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      lastSyncLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastSync',
        value: value,
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      lastSyncBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastSync',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      weddingIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weddingId',
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      weddingIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weddingId',
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      weddingIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weddingId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      weddingIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weddingId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      weddingIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weddingId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      weddingIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weddingId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      weddingIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'weddingId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      weddingIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'weddingId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      weddingIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'weddingId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      weddingIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'weddingId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      weddingIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weddingId',
        value: '',
      ));
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterFilterCondition>
      weddingIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'weddingId',
        value: '',
      ));
    });
  }
}

extension CalendarSyncModelQueryObject
    on QueryBuilder<CalendarSyncModel, CalendarSyncModel, QFilterCondition> {}

extension CalendarSyncModelQueryLinks
    on QueryBuilder<CalendarSyncModel, CalendarSyncModel, QFilterCondition> {}

extension CalendarSyncModelQuerySortBy
    on QueryBuilder<CalendarSyncModel, CalendarSyncModel, QSortBy> {
  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterSortBy>
      sortByGoogleEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'googleEventId', Sort.asc);
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterSortBy>
      sortByGoogleEventIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'googleEventId', Sort.desc);
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterSortBy>
      sortByLastSync() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSync', Sort.asc);
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterSortBy>
      sortByLastSyncDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSync', Sort.desc);
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterSortBy>
      sortByWeddingId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weddingId', Sort.asc);
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterSortBy>
      sortByWeddingIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weddingId', Sort.desc);
    });
  }
}

extension CalendarSyncModelQuerySortThenBy
    on QueryBuilder<CalendarSyncModel, CalendarSyncModel, QSortThenBy> {
  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterSortBy>
      thenByGoogleEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'googleEventId', Sort.asc);
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterSortBy>
      thenByGoogleEventIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'googleEventId', Sort.desc);
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterSortBy>
      thenByLastSync() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSync', Sort.asc);
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterSortBy>
      thenByLastSyncDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSync', Sort.desc);
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterSortBy>
      thenByWeddingId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weddingId', Sort.asc);
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QAfterSortBy>
      thenByWeddingIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weddingId', Sort.desc);
    });
  }
}

extension CalendarSyncModelQueryWhereDistinct
    on QueryBuilder<CalendarSyncModel, CalendarSyncModel, QDistinct> {
  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QDistinct>
      distinctByGoogleEventId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'googleEventId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QDistinct>
      distinctByLastSync() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastSync');
    });
  }

  QueryBuilder<CalendarSyncModel, CalendarSyncModel, QDistinct>
      distinctByWeddingId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weddingId', caseSensitive: caseSensitive);
    });
  }
}

extension CalendarSyncModelQueryProperty
    on QueryBuilder<CalendarSyncModel, CalendarSyncModel, QQueryProperty> {
  QueryBuilder<CalendarSyncModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CalendarSyncModel, String?, QQueryOperations>
      googleEventIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'googleEventId');
    });
  }

  QueryBuilder<CalendarSyncModel, DateTime?, QQueryOperations>
      lastSyncProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastSync');
    });
  }

  QueryBuilder<CalendarSyncModel, String?, QQueryOperations>
      weddingIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weddingId');
    });
  }
}
