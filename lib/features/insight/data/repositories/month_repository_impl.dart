import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../domain/entities/month.dart';
import '../../domain/repositories/month_repository.dart';


class MonthRepositoryImpl implements MonthRepository {
  final BuildContext context;

  MonthRepositoryImpl(this.context);

  @override
  List<Month> getMonths() {
    final localizations = AppLocalizations.of(context)!;

    return [
      Month(localizations.jan),
      Month(localizations.feb),
      Month(localizations.mar),
      Month(localizations.apr),
      Month(localizations.may),
      Month(localizations.jun),
      Month(localizations.jul),
      Month(localizations.aug),
      Month(localizations.sept),
      Month(localizations.oct),
      Month(localizations.nov),
      Month(localizations.dec),
    ];
  }
}