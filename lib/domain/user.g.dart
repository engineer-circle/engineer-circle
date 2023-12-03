// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      name: json['name'] as String?,
      skills: (json['skills'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      career: $enumDecodeNullable(_$CareerOptionEnumMap, json['career']),
      selfIntroduction: json['selfIntroduction'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      twitterLink: json['twitterLink'] as String?,
      musubiteLink: json['musubiteLink'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'skills': instance.skills,
      'career': _$CareerOptionEnumMap[instance.career],
      'selfIntroduction': instance.selfIntroduction,
      'avatarUrl': instance.avatarUrl,
      'twitterLink': instance.twitterLink,
      'musubiteLink': instance.musubiteLink,
    };

const _$CareerOptionEnumMap = {
  CareerOption.jobHuntingOrConsideringChange: 'jobHuntingOrConsideringChange',
  CareerOption.lookingForSideJob: 'lookingForSideJob',
  CareerOption.willingToIntroduceOwnCompany: 'willingToIntroduceOwnCompany',
  CareerOption.noneOfTheAbove: 'noneOfTheAbove',
};
