// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quote_template.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetQuoteTemplateCollection on Isar {
  IsarCollection<QuoteTemplate> get quoteTemplates => this.collection();
}

const QuoteTemplateSchema = CollectionSchema(
  name: r'QuoteTemplate',
  id: -2985514409188404107,
  properties: {
    r'footerText': PropertySchema(
      id: 0,
      name: r'footerText',
      type: IsarType.string,
    ),
    r'headerText': PropertySchema(
      id: 1,
      name: r'headerText',
      type: IsarType.string,
    ),
    r'legalTerms': PropertySchema(
      id: 2,
      name: r'legalTerms',
      type: IsarType.string,
    ),
    r'paymentTerms': PropertySchema(
      id: 3,
      name: r'paymentTerms',
      type: IsarType.string,
    )
  },
  estimateSize: _quoteTemplateEstimateSize,
  serialize: _quoteTemplateSerialize,
  deserialize: _quoteTemplateDeserialize,
  deserializeProp: _quoteTemplateDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _quoteTemplateGetId,
  getLinks: _quoteTemplateGetLinks,
  attach: _quoteTemplateAttach,
  version: '3.1.0+1',
);

int _quoteTemplateEstimateSize(
  QuoteTemplate object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.footerText;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.headerText;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.legalTerms;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.paymentTerms;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _quoteTemplateSerialize(
  QuoteTemplate object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.footerText);
  writer.writeString(offsets[1], object.headerText);
  writer.writeString(offsets[2], object.legalTerms);
  writer.writeString(offsets[3], object.paymentTerms);
}

QuoteTemplate _quoteTemplateDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = QuoteTemplate(
    footerText: reader.readStringOrNull(offsets[0]),
    headerText: reader.readStringOrNull(offsets[1]),
    legalTerms: reader.readStringOrNull(offsets[2]),
    paymentTerms: reader.readStringOrNull(offsets[3]),
  );
  object.id = id;
  return object;
}

P _quoteTemplateDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _quoteTemplateGetId(QuoteTemplate object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _quoteTemplateGetLinks(QuoteTemplate object) {
  return [];
}

void _quoteTemplateAttach(
    IsarCollection<dynamic> col, Id id, QuoteTemplate object) {
  object.id = id;
}

extension QuoteTemplateQueryWhereSort
    on QueryBuilder<QuoteTemplate, QuoteTemplate, QWhere> {
  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension QuoteTemplateQueryWhere
    on QueryBuilder<QuoteTemplate, QuoteTemplate, QWhereClause> {
  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterWhereClause> idBetween(
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
}

extension QuoteTemplateQueryFilter
    on QueryBuilder<QuoteTemplate, QuoteTemplate, QFilterCondition> {
  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      footerTextIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'footerText',
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      footerTextIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'footerText',
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      footerTextEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'footerText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      footerTextGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'footerText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      footerTextLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'footerText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      footerTextBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'footerText',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      footerTextStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'footerText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      footerTextEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'footerText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      footerTextContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'footerText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      footerTextMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'footerText',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      footerTextIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'footerText',
        value: '',
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      footerTextIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'footerText',
        value: '',
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      headerTextIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'headerText',
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      headerTextIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'headerText',
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      headerTextEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'headerText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      headerTextGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'headerText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      headerTextLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'headerText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      headerTextBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'headerText',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      headerTextStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'headerText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      headerTextEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'headerText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      headerTextContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'headerText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      headerTextMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'headerText',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      headerTextIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'headerText',
        value: '',
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      headerTextIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'headerText',
        value: '',
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
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

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition> idBetween(
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

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      legalTermsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'legalTerms',
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      legalTermsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'legalTerms',
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      legalTermsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'legalTerms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      legalTermsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'legalTerms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      legalTermsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'legalTerms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      legalTermsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'legalTerms',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      legalTermsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'legalTerms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      legalTermsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'legalTerms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      legalTermsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'legalTerms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      legalTermsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'legalTerms',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      legalTermsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'legalTerms',
        value: '',
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      legalTermsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'legalTerms',
        value: '',
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      paymentTermsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'paymentTerms',
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      paymentTermsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'paymentTerms',
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      paymentTermsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentTerms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      paymentTermsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'paymentTerms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      paymentTermsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'paymentTerms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      paymentTermsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'paymentTerms',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      paymentTermsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'paymentTerms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      paymentTermsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'paymentTerms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      paymentTermsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'paymentTerms',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      paymentTermsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'paymentTerms',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      paymentTermsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentTerms',
        value: '',
      ));
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterFilterCondition>
      paymentTermsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'paymentTerms',
        value: '',
      ));
    });
  }
}

extension QuoteTemplateQueryObject
    on QueryBuilder<QuoteTemplate, QuoteTemplate, QFilterCondition> {}

extension QuoteTemplateQueryLinks
    on QueryBuilder<QuoteTemplate, QuoteTemplate, QFilterCondition> {}

extension QuoteTemplateQuerySortBy
    on QueryBuilder<QuoteTemplate, QuoteTemplate, QSortBy> {
  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterSortBy> sortByFooterText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'footerText', Sort.asc);
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterSortBy>
      sortByFooterTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'footerText', Sort.desc);
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterSortBy> sortByHeaderText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headerText', Sort.asc);
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterSortBy>
      sortByHeaderTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headerText', Sort.desc);
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterSortBy> sortByLegalTerms() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'legalTerms', Sort.asc);
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterSortBy>
      sortByLegalTermsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'legalTerms', Sort.desc);
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterSortBy>
      sortByPaymentTerms() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentTerms', Sort.asc);
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterSortBy>
      sortByPaymentTermsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentTerms', Sort.desc);
    });
  }
}

extension QuoteTemplateQuerySortThenBy
    on QueryBuilder<QuoteTemplate, QuoteTemplate, QSortThenBy> {
  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterSortBy> thenByFooterText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'footerText', Sort.asc);
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterSortBy>
      thenByFooterTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'footerText', Sort.desc);
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterSortBy> thenByHeaderText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headerText', Sort.asc);
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterSortBy>
      thenByHeaderTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'headerText', Sort.desc);
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterSortBy> thenByLegalTerms() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'legalTerms', Sort.asc);
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterSortBy>
      thenByLegalTermsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'legalTerms', Sort.desc);
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterSortBy>
      thenByPaymentTerms() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentTerms', Sort.asc);
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QAfterSortBy>
      thenByPaymentTermsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentTerms', Sort.desc);
    });
  }
}

extension QuoteTemplateQueryWhereDistinct
    on QueryBuilder<QuoteTemplate, QuoteTemplate, QDistinct> {
  QueryBuilder<QuoteTemplate, QuoteTemplate, QDistinct> distinctByFooterText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'footerText', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QDistinct> distinctByHeaderText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'headerText', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QDistinct> distinctByLegalTerms(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'legalTerms', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QuoteTemplate, QuoteTemplate, QDistinct> distinctByPaymentTerms(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paymentTerms', caseSensitive: caseSensitive);
    });
  }
}

extension QuoteTemplateQueryProperty
    on QueryBuilder<QuoteTemplate, QuoteTemplate, QQueryProperty> {
  QueryBuilder<QuoteTemplate, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<QuoteTemplate, String?, QQueryOperations> footerTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'footerText');
    });
  }

  QueryBuilder<QuoteTemplate, String?, QQueryOperations> headerTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'headerText');
    });
  }

  QueryBuilder<QuoteTemplate, String?, QQueryOperations> legalTermsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'legalTerms');
    });
  }

  QueryBuilder<QuoteTemplate, String?, QQueryOperations>
      paymentTermsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paymentTerms');
    });
  }
}
