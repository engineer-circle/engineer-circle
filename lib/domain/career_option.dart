enum CareerOption {
  jobHuntingOrConsideringChange,
  lookingForSideJob,
  willingToIntroduceOwnCompany,
  noneOfTheAbove,
}

extension CareerOptionExtension on CareerOption {
  String get displayName {
    switch (this) {
      case CareerOption.jobHuntingOrConsideringChange:
        return '転職活動中・転職を考えている';
      case CareerOption.lookingForSideJob:
        return '副業を探している';
      case CareerOption.willingToIntroduceOwnCompany:
        return '良い人がいれば自社を紹介したい';
      case CareerOption.noneOfTheAbove:
        return 'どちらでもない';
    }
  }
}
