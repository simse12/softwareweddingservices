// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const CustomerSchema = Schema(
  name: r'Customer',
  id: -7623823084711604343,
  properties: {
    r'coupleDisplayName': PropertySchema(
      id: 0,
      name: r'coupleDisplayName',
      type: IsarType.string,
    ),
    r'finalDeliveryAddress': PropertySchema(
      id: 1,
      name: r'finalDeliveryAddress',
      type: IsarType.string,
    ),
    r'partnerOne': PropertySchema(
      id: 2,
      name: r'partnerOne',
      type: IsarType.object,
      target: r'Partner',
    ),
    r'partnerTwo': PropertySchema(
      id: 3,
      name: r'partnerTwo',
      type: IsarType.object,
      target: r'Partner',
    )
  },
  estimateSize: _customerEstimateSize,
  serialize: _customerSerialize,
  deserialize: _customerDeserialize,
  deserializeProp: _customerDeserializeProp,
);

int _customerEstimateSize(
  Customer object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.coupleDisplayName.length * 3;
  {
    final value = object.finalDeliveryAddress;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
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
  return bytesCount;
}

void _customerSerialize(
  Customer object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.coupleDisplayName);
  writer.writeString(offsets[1], object.finalDeliveryAddress);
  writer.writeObject<Partner>(
    offsets[2],
    allOffsets,
    PartnerSchema.serialize,
    object.partnerOne,
  );
  writer.writeObject<Partner>(
    offsets[3],
    allOffsets,
    PartnerSchema.serialize,
    object.partnerTwo,
  );
}

Customer _customerDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Customer(
    finalDeliveryAddress: reader.readStringOrNull(offsets[1]),
    partnerOne: reader.readObjectOrNull<Partner>(
      offsets[2],
      PartnerSchema.deserialize,
      allOffsets,
    ),
    partnerTwo: reader.readObjectOrNull<Partner>(
      offsets[3],
      PartnerSchema.deserialize,
      allOffsets,
    ),
  );
  return object;
}

P _customerDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readObjectOrNull<Partner>(
        offset,
        PartnerSchema.deserialize,
        allOffsets,
      )) as P;
    case 3:
      return (reader.readObjectOrNull<Partner>(
        offset,
        PartnerSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension CustomerQueryFilter
    on QueryBuilder<Customer, Customer, QFilterCondition> {
  QueryBuilder<Customer, Customer, QAfterFilterCondition>
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

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
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

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
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

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
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

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
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

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
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

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      coupleDisplayNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'coupleDisplayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      coupleDisplayNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'coupleDisplayName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      coupleDisplayNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'coupleDisplayName',
        value: '',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      coupleDisplayNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'coupleDisplayName',
        value: '',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      finalDeliveryAddressIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'finalDeliveryAddress',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      finalDeliveryAddressIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'finalDeliveryAddress',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
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

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
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

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
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

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
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

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
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

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
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

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      finalDeliveryAddressContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'finalDeliveryAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      finalDeliveryAddressMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'finalDeliveryAddress',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      finalDeliveryAddressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'finalDeliveryAddress',
        value: '',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      finalDeliveryAddressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'finalDeliveryAddress',
        value: '',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> partnerOneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partnerOne',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      partnerOneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partnerOne',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> partnerTwoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partnerTwo',
      ));
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition>
      partnerTwoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partnerTwo',
      ));
    });
  }
}

extension CustomerQueryObject
    on QueryBuilder<Customer, Customer, QFilterCondition> {
  QueryBuilder<Customer, Customer, QAfterFilterCondition> partnerOne(
      FilterQuery<Partner> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'partnerOne');
    });
  }

  QueryBuilder<Customer, Customer, QAfterFilterCondition> partnerTwo(
      FilterQuery<Partner> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'partnerTwo');
    });
  }
}
