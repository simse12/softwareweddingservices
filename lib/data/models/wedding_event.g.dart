// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wedding_event.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWeddingEventCollection on Isar {
  IsarCollection<WeddingEvent> get weddingEvents => this.collection();
}

const WeddingEventSchema = CollectionSchema(
  name: r'WeddingEvent',
  id: -7969270058766453140,
  properties: {
    r'balanceDue': PropertySchema(
      id: 0,
      name: r'balanceDue',
      type: IsarType.double,
    ),
    r'calendarColorId': PropertySchema(
      id: 1,
      name: r'calendarColorId',
      type: IsarType.long,
    ),
    r'coupleDisplayName': PropertySchema(
      id: 2,
      name: r'coupleDisplayName',
      type: IsarType.string,
    ),
    r'customAlerts': PropertySchema(
      id: 3,
      name: r'customAlerts',
      type: IsarType.objectList,
      target: r'CalendarAlert',
    ),
    r'deposit': PropertySchema(
      id: 4,
      name: r'deposit',
      type: IsarType.double,
    ),
    r'discount': PropertySchema(
      id: 5,
      name: r'discount',
      type: IsarType.double,
    ),
    r'eventDate': PropertySchema(
      id: 6,
      name: r'eventDate',
      type: IsarType.dateTime,
    ),
    r'finalDeliveryAddress': PropertySchema(
      id: 7,
      name: r'finalDeliveryAddress',
      type: IsarType.string,
    ),
    r'internalNotes': PropertySchema(
      id: 8,
      name: r'internalNotes',
      type: IsarType.string,
    ),
    r'locations': PropertySchema(
      id: 9,
      name: r'locations',
      type: IsarType.objectList,
      target: r'Address',
    ),
    r'partnerOne': PropertySchema(
      id: 10,
      name: r'partnerOne',
      type: IsarType.object,
      target: r'Partner',
    ),
    r'partnerTwo': PropertySchema(
      id: 11,
      name: r'partnerTwo',
      type: IsarType.object,
      target: r'Partner',
    ),
    r'profitMargin': PropertySchema(
      id: 12,
      name: r'profitMargin',
      type: IsarType.double,
    ),
    r'services': PropertySchema(
      id: 13,
      name: r'services',
      type: IsarType.objectList,
      target: r'ServiceItem',
    ),
    r'staff': PropertySchema(
      id: 14,
      name: r'staff',
      type: IsarType.objectList,
      target: r'Colleague',
    ),
    r'status': PropertySchema(
      id: 15,
      name: r'status',
      type: IsarType.byte,
      enumMap: _WeddingEventstatusEnumValueMap,
    ),
    r'timeline': PropertySchema(
      id: 16,
      name: r'timeline',
      type: IsarType.objectList,
      target: r'TimelineStep',
    ),
    r'totalPrice': PropertySchema(
      id: 17,
      name: r'totalPrice',
      type: IsarType.double,
    ),
    r'totalServices': PropertySchema(
      id: 18,
      name: r'totalServices',
      type: IsarType.double,
    ),
    r'workflow': PropertySchema(
      id: 19,
      name: r'workflow',
      type: IsarType.objectList,
      target: r'TaskChecklist',
    ),
    r'workflowProgress': PropertySchema(
      id: 20,
      name: r'workflowProgress',
      type: IsarType.double,
    )
  },
  estimateSize: _weddingEventEstimateSize,
  serialize: _weddingEventSerialize,
  deserialize: _weddingEventDeserialize,
  deserializeProp: _weddingEventDeserializeProp,
  idName: r'id',
  indexes: {
    r'eventDate': IndexSchema(
      id: -2827469816326842607,
      name: r'eventDate',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'eventDate',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {
    r'Partner': PartnerSchema,
    r'Address': AddressSchema,
    r'ServiceItem': ServiceItemSchema,
    r'Colleague': ColleagueSchema,
    r'CalendarAlert': CalendarAlertSchema,
    r'TimelineStep': TimelineStepSchema,
    r'TaskChecklist': TaskChecklistSchema
  },
  getId: _weddingEventGetId,
  getLinks: _weddingEventGetLinks,
  attach: _weddingEventAttach,
  version: '3.1.0+1',
);

int _weddingEventEstimateSize(
  WeddingEvent object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.coupleDisplayName.length * 3;
  bytesCount += 3 + object.customAlerts.length * 3;
  {
    final offsets = allOffsets[CalendarAlert]!;
    for (var i = 0; i < object.customAlerts.length; i++) {
      final value = object.customAlerts[i];
      bytesCount +=
          CalendarAlertSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  {
    final value = object.finalDeliveryAddress;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.internalNotes.length * 3;
  bytesCount += 3 + object.locations.length * 3;
  {
    final offsets = allOffsets[Address]!;
    for (var i = 0; i < object.locations.length; i++) {
      final value = object.locations[i];
      bytesCount += AddressSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  {
    final value = object.partnerOne;
    if (value != null) {
      bytesCount += 3 +
          PartnerSchema.estimateSize(value, allOffsets[Partner]!, allOffsets);
    }
  }
  {
    final value = object.partnerTwo;
    if (value != null) {
      bytesCount += 3 +
          PartnerSchema.estimateSize(value, allOffsets[Partner]!, allOffsets);
    }
  }
  bytesCount += 3 + object.services.length * 3;
  {
    final offsets = allOffsets[ServiceItem]!;
    for (var i = 0; i < object.services.length; i++) {
      final value = object.services[i];
      bytesCount += ServiceItemSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.staff.length * 3;
  {
    final offsets = allOffsets[Colleague]!;
    for (var i = 0; i < object.staff.length; i++) {
      final value = object.staff[i];
      bytesCount += ColleagueSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.timeline.length * 3;
  {
    final offsets = allOffsets[TimelineStep]!;
    for (var i = 0; i < object.timeline.length; i++) {
      final value = object.timeline[i];
      bytesCount += TimelineStepSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.workflow.length * 3;
  {
    final offsets = allOffsets[TaskChecklist]!;
    for (var i = 0; i < object.workflow.length; i++) {
      final value = object.workflow[i];
      bytesCount +=
          TaskChecklistSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _weddingEventSerialize(
  WeddingEvent object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.balanceDue);
  writer.writeLong(offsets[1], object.calendarColorId);
  writer.writeString(offsets[2], object.coupleDisplayName);
  writer.writeObjectList<CalendarAlert>(
    offsets[3],
    allOffsets,
    CalendarAlertSchema.serialize,
    object.customAlerts,
  );
  writer.writeDouble(offsets[4], object.deposit);
  writer.writeDouble(offsets[5], object.discount);
  writer.writeDateTime(offsets[6], object.eventDate);
  writer.writeString(offsets[7], object.finalDeliveryAddress);
  writer.writeString(offsets[8], object.internalNotes);
  writer.writeObjectList<Address>(
    offsets[9],
    allOffsets,
    AddressSchema.serialize,
    object.locations,
  );
  writer.writeObject<Partner>(
    offsets[10],
    allOffsets,
    PartnerSchema.serialize,
    object.partnerOne,
  );
  writer.writeObject<Partner>(
    offsets[11],
    allOffsets,
    PartnerSchema.serialize,
    object.partnerTwo,
  );
  writer.writeDouble(offsets[12], object.profitMargin);
  writer.writeObjectList<ServiceItem>(
    offsets[13],
    allOffsets,
    ServiceItemSchema.serialize,
    object.services,
  );
  writer.writeObjectList<Colleague>(
    offsets[14],
    allOffsets,
    ColleagueSchema.serialize,
    object.staff,
  );
  writer.writeByte(offsets[15], object.status.index);
  writer.writeObjectList<TimelineStep>(
    offsets[16],
    allOffsets,
    TimelineStepSchema.serialize,
    object.timeline,
  );
  writer.writeDouble(offsets[17], object.totalPrice);
  writer.writeDouble(offsets[18], object.totalServices);
  writer.writeObjectList<TaskChecklist>(
    offsets[19],
    allOffsets,
    TaskChecklistSchema.serialize,
    object.workflow,
  );
  writer.writeDouble(offsets[20], object.workflowProgress);
}

WeddingEvent _weddingEventDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WeddingEvent(
    deposit: reader.readDoubleOrNull(offsets[4]) ?? 0.0,
    discount: reader.readDoubleOrNull(offsets[5]) ?? 0.0,
    eventDate: reader.readDateTime(offsets[6]),
    internalNotes: reader.readStringOrNull(offsets[8]) ?? '',
    status:
        _WeddingEventstatusValueEnumMap[reader.readByteOrNull(offsets[15])] ??
            EventStatus.lead,
  );
  object.customAlerts = reader.readObjectList<CalendarAlert>(
        offsets[3],
        CalendarAlertSchema.deserialize,
        allOffsets,
        CalendarAlert(),
      ) ??
      [];
  object.finalDeliveryAddress = reader.readStringOrNull(offsets[7]);
  object.id = id;
  object.locations = reader.readObjectList<Address>(
        offsets[9],
        AddressSchema.deserialize,
        allOffsets,
        Address(),
      ) ??
      [];
  object.partnerOne = reader.readObjectOrNull<Partner>(
    offsets[10],
    PartnerSchema.deserialize,
    allOffsets,
  );
  object.partnerTwo = reader.readObjectOrNull<Partner>(
    offsets[11],
    PartnerSchema.deserialize,
    allOffsets,
  );
  object.services = reader.readObjectList<ServiceItem>(
        offsets[13],
        ServiceItemSchema.deserialize,
        allOffsets,
        ServiceItem(),
      ) ??
      [];
  object.staff = reader.readObjectList<Colleague>(
        offsets[14],
        ColleagueSchema.deserialize,
        allOffsets,
        Colleague(),
      ) ??
      [];
  object.timeline = reader.readObjectList<TimelineStep>(
        offsets[16],
        TimelineStepSchema.deserialize,
        allOffsets,
        TimelineStep(),
      ) ??
      [];
  object.workflow = reader.readObjectList<TaskChecklist>(
        offsets[19],
        TaskChecklistSchema.deserialize,
        allOffsets,
        TaskChecklist(),
      ) ??
      [];
  return object;
}

P _weddingEventDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readObjectList<CalendarAlert>(
            offset,
            CalendarAlertSchema.deserialize,
            allOffsets,
            CalendarAlert(),
          ) ??
          []) as P;
    case 4:
      return (reader.readDoubleOrNull(offset) ?? 0.0) as P;
    case 5:
      return (reader.readDoubleOrNull(offset) ?? 0.0) as P;
    case 6:
      return (reader.readDateTime(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 9:
      return (reader.readObjectList<Address>(
            offset,
            AddressSchema.deserialize,
            allOffsets,
            Address(),
          ) ??
          []) as P;
    case 10:
      return (reader.readObjectOrNull<Partner>(
        offset,
        PartnerSchema.deserialize,
        allOffsets,
      )) as P;
    case 11:
      return (reader.readObjectOrNull<Partner>(
        offset,
        PartnerSchema.deserialize,
        allOffsets,
      )) as P;
    case 12:
      return (reader.readDouble(offset)) as P;
    case 13:
      return (reader.readObjectList<ServiceItem>(
            offset,
            ServiceItemSchema.deserialize,
            allOffsets,
            ServiceItem(),
          ) ??
          []) as P;
    case 14:
      return (reader.readObjectList<Colleague>(
            offset,
            ColleagueSchema.deserialize,
            allOffsets,
            Colleague(),
          ) ??
          []) as P;
    case 15:
      return (_WeddingEventstatusValueEnumMap[reader.readByteOrNull(offset)] ??
          EventStatus.lead) as P;
    case 16:
      return (reader.readObjectList<TimelineStep>(
            offset,
            TimelineStepSchema.deserialize,
            allOffsets,
            TimelineStep(),
          ) ??
          []) as P;
    case 17:
      return (reader.readDouble(offset)) as P;
    case 18:
      return (reader.readDouble(offset)) as P;
    case 19:
      return (reader.readObjectList<TaskChecklist>(
            offset,
            TaskChecklistSchema.deserialize,
            allOffsets,
            TaskChecklist(),
          ) ??
          []) as P;
    case 20:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _WeddingEventstatusEnumValueMap = {
  'lead': 0,
  'negotiation': 1,
  'confirmed': 2,
  'editing': 3,
  'delivered': 4,
  'archived': 5,
};
const _WeddingEventstatusValueEnumMap = {
  0: EventStatus.lead,
  1: EventStatus.negotiation,
  2: EventStatus.confirmed,
  3: EventStatus.editing,
  4: EventStatus.delivered,
  5: EventStatus.archived,
};

Id _weddingEventGetId(WeddingEvent object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _weddingEventGetLinks(WeddingEvent object) {
  return [];
}

void _weddingEventAttach(
    IsarCollection<dynamic> col, Id id, WeddingEvent object) {
  object.id = id;
}

extension WeddingEventQueryWhereSort
    on QueryBuilder<WeddingEvent, WeddingEvent, QWhere> {
  QueryBuilder<WeddingEvent, WeddingEvent, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterWhere> anyEventDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'eventDate'),
      );
    });
  }
}

extension WeddingEventQueryWhere
    on QueryBuilder<WeddingEvent, WeddingEvent, QWhereClause> {
  QueryBuilder<WeddingEvent, WeddingEvent, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterWhereClause> idBetween(
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

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterWhereClause> eventDateEqualTo(
      DateTime eventDate) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'eventDate',
        value: [eventDate],
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterWhereClause>
      eventDateNotEqualTo(DateTime eventDate) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eventDate',
              lower: [],
              upper: [eventDate],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eventDate',
              lower: [eventDate],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eventDate',
              lower: [eventDate],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eventDate',
              lower: [],
              upper: [eventDate],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterWhereClause>
      eventDateGreaterThan(
    DateTime eventDate, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'eventDate',
        lower: [eventDate],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterWhereClause> eventDateLessThan(
    DateTime eventDate, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'eventDate',
        lower: [],
        upper: [eventDate],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterWhereClause> eventDateBetween(
    DateTime lowerEventDate,
    DateTime upperEventDate, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'eventDate',
        lower: [lowerEventDate],
        includeLower: includeLower,
        upper: [upperEventDate],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension WeddingEventQueryFilter
    on QueryBuilder<WeddingEvent, WeddingEvent, QFilterCondition> {
  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      balanceDueEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'balanceDue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      balanceDueGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'balanceDue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      balanceDueLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'balanceDue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      balanceDueBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'balanceDue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      calendarColorIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'calendarColorId',
        value: value,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      calendarColorIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'calendarColorId',
        value: value,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      calendarColorIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'calendarColorId',
        value: value,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      calendarColorIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'calendarColorId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      coupleDisplayNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'coupleDisplayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      coupleDisplayNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'coupleDisplayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      coupleDisplayNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'coupleDisplayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      coupleDisplayNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'coupleDisplayName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      coupleDisplayNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'coupleDisplayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      coupleDisplayNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'coupleDisplayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      coupleDisplayNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'coupleDisplayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      coupleDisplayNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'coupleDisplayName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      coupleDisplayNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'coupleDisplayName',
        value: '',
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      coupleDisplayNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'coupleDisplayName',
        value: '',
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      customAlertsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'customAlerts',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      customAlertsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'customAlerts',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      customAlertsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'customAlerts',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      customAlertsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'customAlerts',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      customAlertsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'customAlerts',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      customAlertsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'customAlerts',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      depositEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deposit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      depositGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deposit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      depositLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deposit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      depositBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deposit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      discountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      discountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'discount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      discountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'discount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      discountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'discount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      eventDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventDate',
        value: value,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      eventDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eventDate',
        value: value,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      eventDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eventDate',
        value: value,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      eventDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eventDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      finalDeliveryAddressIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'finalDeliveryAddress',
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      finalDeliveryAddressIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'finalDeliveryAddress',
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      finalDeliveryAddressEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'finalDeliveryAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      finalDeliveryAddressGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'finalDeliveryAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      finalDeliveryAddressLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'finalDeliveryAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      finalDeliveryAddressBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'finalDeliveryAddress',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      finalDeliveryAddressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'finalDeliveryAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      finalDeliveryAddressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'finalDeliveryAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      finalDeliveryAddressContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'finalDeliveryAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      finalDeliveryAddressMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'finalDeliveryAddress',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      finalDeliveryAddressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'finalDeliveryAddress',
        value: '',
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      finalDeliveryAddressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'finalDeliveryAddress',
        value: '',
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition> idBetween(
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

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      internalNotesEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'internalNotes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      internalNotesGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'internalNotes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      internalNotesLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'internalNotes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      internalNotesBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'internalNotes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      internalNotesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'internalNotes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      internalNotesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'internalNotes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      internalNotesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'internalNotes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      internalNotesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'internalNotes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      internalNotesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'internalNotes',
        value: '',
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      internalNotesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'internalNotes',
        value: '',
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      locationsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'locations',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      locationsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'locations',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      locationsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'locations',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      locationsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'locations',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      locationsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'locations',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      locationsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'locations',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      partnerOneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partnerOne',
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      partnerOneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partnerOne',
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      partnerTwoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partnerTwo',
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      partnerTwoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partnerTwo',
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      profitMarginEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'profitMargin',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      profitMarginGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'profitMargin',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      profitMarginLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'profitMargin',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      profitMarginBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'profitMargin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      servicesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'services',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      servicesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'services',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      servicesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'services',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      servicesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'services',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      servicesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'services',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      servicesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'services',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      staffLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'staff',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      staffIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'staff',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      staffIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'staff',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      staffLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'staff',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      staffLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'staff',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      staffLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'staff',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition> statusEqualTo(
      EventStatus value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      statusGreaterThan(
    EventStatus value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      statusLessThan(
    EventStatus value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition> statusBetween(
    EventStatus lower,
    EventStatus upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      timelineLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'timeline',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      timelineIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'timeline',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      timelineIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'timeline',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      timelineLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'timeline',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      timelineLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'timeline',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      timelineLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'timeline',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      totalPriceEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      totalPriceGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      totalPriceLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      totalPriceBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      totalServicesEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalServices',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      totalServicesGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalServices',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      totalServicesLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalServices',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      totalServicesBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalServices',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      workflowLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'workflow',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      workflowIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'workflow',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      workflowIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'workflow',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      workflowLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'workflow',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      workflowLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'workflow',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      workflowLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'workflow',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      workflowProgressEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'workflowProgress',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      workflowProgressGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'workflowProgress',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      workflowProgressLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'workflowProgress',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      workflowProgressBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'workflowProgress',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension WeddingEventQueryObject
    on QueryBuilder<WeddingEvent, WeddingEvent, QFilterCondition> {
  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      customAlertsElement(FilterQuery<CalendarAlert> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'customAlerts');
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      locationsElement(FilterQuery<Address> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'locations');
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition> partnerOne(
      FilterQuery<Partner> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'partnerOne');
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition> partnerTwo(
      FilterQuery<Partner> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'partnerTwo');
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      servicesElement(FilterQuery<ServiceItem> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'services');
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition> staffElement(
      FilterQuery<Colleague> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'staff');
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      timelineElement(FilterQuery<TimelineStep> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'timeline');
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterFilterCondition>
      workflowElement(FilterQuery<TaskChecklist> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'workflow');
    });
  }
}

extension WeddingEventQueryLinks
    on QueryBuilder<WeddingEvent, WeddingEvent, QFilterCondition> {}

extension WeddingEventQuerySortBy
    on QueryBuilder<WeddingEvent, WeddingEvent, QSortBy> {
  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> sortByBalanceDue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'balanceDue', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy>
      sortByBalanceDueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'balanceDue', Sort.desc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy>
      sortByCalendarColorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calendarColorId', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy>
      sortByCalendarColorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calendarColorId', Sort.desc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy>
      sortByCoupleDisplayName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'coupleDisplayName', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy>
      sortByCoupleDisplayNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'coupleDisplayName', Sort.desc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> sortByDeposit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deposit', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> sortByDepositDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deposit', Sort.desc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> sortByDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discount', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> sortByDiscountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discount', Sort.desc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> sortByEventDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventDate', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> sortByEventDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventDate', Sort.desc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy>
      sortByFinalDeliveryAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finalDeliveryAddress', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy>
      sortByFinalDeliveryAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finalDeliveryAddress', Sort.desc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> sortByInternalNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'internalNotes', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy>
      sortByInternalNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'internalNotes', Sort.desc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> sortByProfitMargin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profitMargin', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy>
      sortByProfitMarginDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profitMargin', Sort.desc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> sortByTotalPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPrice', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy>
      sortByTotalPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPrice', Sort.desc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> sortByTotalServices() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalServices', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy>
      sortByTotalServicesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalServices', Sort.desc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy>
      sortByWorkflowProgress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workflowProgress', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy>
      sortByWorkflowProgressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workflowProgress', Sort.desc);
    });
  }
}

extension WeddingEventQuerySortThenBy
    on QueryBuilder<WeddingEvent, WeddingEvent, QSortThenBy> {
  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> thenByBalanceDue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'balanceDue', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy>
      thenByBalanceDueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'balanceDue', Sort.desc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy>
      thenByCalendarColorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calendarColorId', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy>
      thenByCalendarColorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calendarColorId', Sort.desc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy>
      thenByCoupleDisplayName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'coupleDisplayName', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy>
      thenByCoupleDisplayNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'coupleDisplayName', Sort.desc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> thenByDeposit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deposit', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> thenByDepositDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deposit', Sort.desc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> thenByDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discount', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> thenByDiscountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discount', Sort.desc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> thenByEventDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventDate', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> thenByEventDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventDate', Sort.desc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy>
      thenByFinalDeliveryAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finalDeliveryAddress', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy>
      thenByFinalDeliveryAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finalDeliveryAddress', Sort.desc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> thenByInternalNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'internalNotes', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy>
      thenByInternalNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'internalNotes', Sort.desc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> thenByProfitMargin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profitMargin', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy>
      thenByProfitMarginDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profitMargin', Sort.desc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> thenByTotalPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPrice', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy>
      thenByTotalPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPrice', Sort.desc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy> thenByTotalServices() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalServices', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy>
      thenByTotalServicesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalServices', Sort.desc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy>
      thenByWorkflowProgress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workflowProgress', Sort.asc);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QAfterSortBy>
      thenByWorkflowProgressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workflowProgress', Sort.desc);
    });
  }
}

extension WeddingEventQueryWhereDistinct
    on QueryBuilder<WeddingEvent, WeddingEvent, QDistinct> {
  QueryBuilder<WeddingEvent, WeddingEvent, QDistinct> distinctByBalanceDue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'balanceDue');
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QDistinct>
      distinctByCalendarColorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'calendarColorId');
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QDistinct>
      distinctByCoupleDisplayName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'coupleDisplayName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QDistinct> distinctByDeposit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deposit');
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QDistinct> distinctByDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'discount');
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QDistinct> distinctByEventDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eventDate');
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QDistinct>
      distinctByFinalDeliveryAddress({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'finalDeliveryAddress',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QDistinct> distinctByInternalNotes(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'internalNotes',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QDistinct> distinctByProfitMargin() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'profitMargin');
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QDistinct> distinctByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status');
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QDistinct> distinctByTotalPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalPrice');
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QDistinct>
      distinctByTotalServices() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalServices');
    });
  }

  QueryBuilder<WeddingEvent, WeddingEvent, QDistinct>
      distinctByWorkflowProgress() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'workflowProgress');
    });
  }
}

extension WeddingEventQueryProperty
    on QueryBuilder<WeddingEvent, WeddingEvent, QQueryProperty> {
  QueryBuilder<WeddingEvent, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WeddingEvent, double, QQueryOperations> balanceDueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'balanceDue');
    });
  }

  QueryBuilder<WeddingEvent, int, QQueryOperations> calendarColorIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'calendarColorId');
    });
  }

  QueryBuilder<WeddingEvent, String, QQueryOperations>
      coupleDisplayNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'coupleDisplayName');
    });
  }

  QueryBuilder<WeddingEvent, List<CalendarAlert>, QQueryOperations>
      customAlertsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customAlerts');
    });
  }

  QueryBuilder<WeddingEvent, double, QQueryOperations> depositProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deposit');
    });
  }

  QueryBuilder<WeddingEvent, double, QQueryOperations> discountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'discount');
    });
  }

  QueryBuilder<WeddingEvent, DateTime, QQueryOperations> eventDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eventDate');
    });
  }

  QueryBuilder<WeddingEvent, String?, QQueryOperations>
      finalDeliveryAddressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'finalDeliveryAddress');
    });
  }

  QueryBuilder<WeddingEvent, String, QQueryOperations> internalNotesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'internalNotes');
    });
  }

  QueryBuilder<WeddingEvent, List<Address>, QQueryOperations>
      locationsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'locations');
    });
  }

  QueryBuilder<WeddingEvent, Partner?, QQueryOperations> partnerOneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partnerOne');
    });
  }

  QueryBuilder<WeddingEvent, Partner?, QQueryOperations> partnerTwoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partnerTwo');
    });
  }

  QueryBuilder<WeddingEvent, double, QQueryOperations> profitMarginProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'profitMargin');
    });
  }

  QueryBuilder<WeddingEvent, List<ServiceItem>, QQueryOperations>
      servicesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'services');
    });
  }

  QueryBuilder<WeddingEvent, List<Colleague>, QQueryOperations>
      staffProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'staff');
    });
  }

  QueryBuilder<WeddingEvent, EventStatus, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<WeddingEvent, List<TimelineStep>, QQueryOperations>
      timelineProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timeline');
    });
  }

  QueryBuilder<WeddingEvent, double, QQueryOperations> totalPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalPrice');
    });
  }

  QueryBuilder<WeddingEvent, double, QQueryOperations> totalServicesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalServices');
    });
  }

  QueryBuilder<WeddingEvent, List<TaskChecklist>, QQueryOperations>
      workflowProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'workflow');
    });
  }

  QueryBuilder<WeddingEvent, double, QQueryOperations>
      workflowProgressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'workflowProgress');
    });
  }
}
