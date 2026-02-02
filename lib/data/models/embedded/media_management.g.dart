// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_management.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const MediaManagementSchema = Schema(
  name: r'MediaManagement',
  id: 8480027100292098316,
  properties: {
    r'cloudPreviewLink': PropertySchema(
      id: 0,
      name: r'cloudPreviewLink',
      type: IsarType.string,
    ),
    r'isBackedUp': PropertySchema(
      id: 1,
      name: r'isBackedUp',
      type: IsarType.bool,
    ),
    r'rawFilesPath': PropertySchema(
      id: 2,
      name: r'rawFilesPath',
      type: IsarType.string,
    ),
    r'storageDevice': PropertySchema(
      id: 3,
      name: r'storageDevice',
      type: IsarType.string,
    )
  },
  estimateSize: _mediaManagementEstimateSize,
  serialize: _mediaManagementSerialize,
  deserialize: _mediaManagementDeserialize,
  deserializeProp: _mediaManagementDeserializeProp,
);

int _mediaManagementEstimateSize(
  MediaManagement object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.cloudPreviewLink;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.rawFilesPath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.storageDevice;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _mediaManagementSerialize(
  MediaManagement object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.cloudPreviewLink);
  writer.writeBool(offsets[1], object.isBackedUp);
  writer.writeString(offsets[2], object.rawFilesPath);
  writer.writeString(offsets[3], object.storageDevice);
}

MediaManagement _mediaManagementDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MediaManagement(
    cloudPreviewLink: reader.readStringOrNull(offsets[0]),
    isBackedUp: reader.readBoolOrNull(offsets[1]) ?? false,
    rawFilesPath: reader.readStringOrNull(offsets[2]),
    storageDevice: reader.readStringOrNull(offsets[3]),
  );
  return object;
}

P _mediaManagementDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension MediaManagementQueryFilter
    on QueryBuilder<MediaManagement, MediaManagement, QFilterCondition> {
  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      cloudPreviewLinkIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cloudPreviewLink',
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      cloudPreviewLinkIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cloudPreviewLink',
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      cloudPreviewLinkEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cloudPreviewLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      cloudPreviewLinkGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cloudPreviewLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      cloudPreviewLinkLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cloudPreviewLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      cloudPreviewLinkBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cloudPreviewLink',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      cloudPreviewLinkStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cloudPreviewLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      cloudPreviewLinkEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cloudPreviewLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      cloudPreviewLinkContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cloudPreviewLink',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      cloudPreviewLinkMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cloudPreviewLink',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      cloudPreviewLinkIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cloudPreviewLink',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      cloudPreviewLinkIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cloudPreviewLink',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      isBackedUpEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isBackedUp',
        value: value,
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      rawFilesPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rawFilesPath',
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      rawFilesPathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rawFilesPath',
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      rawFilesPathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rawFilesPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      rawFilesPathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rawFilesPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      rawFilesPathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rawFilesPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      rawFilesPathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rawFilesPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      rawFilesPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rawFilesPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      rawFilesPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rawFilesPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      rawFilesPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rawFilesPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      rawFilesPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rawFilesPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      rawFilesPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rawFilesPath',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      rawFilesPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rawFilesPath',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      storageDeviceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'storageDevice',
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      storageDeviceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'storageDevice',
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      storageDeviceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storageDevice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      storageDeviceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'storageDevice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      storageDeviceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'storageDevice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      storageDeviceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'storageDevice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      storageDeviceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'storageDevice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      storageDeviceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'storageDevice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      storageDeviceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'storageDevice',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      storageDeviceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'storageDevice',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      storageDeviceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'storageDevice',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaManagement, MediaManagement, QAfterFilterCondition>
      storageDeviceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'storageDevice',
        value: '',
      ));
    });
  }
}

extension MediaManagementQueryObject
    on QueryBuilder<MediaManagement, MediaManagement, QFilterCondition> {}
