import 'package:sber_app/app/models/user.dart';
import 'package:sber_app/app/models/chapter.dart';
import 'package:sber_app/app/models/service.dart';
import 'package:sber_app/app/models/tariffs_and_limits_button.dart';
import 'package:sber_app/app/theme/images.dart';
import 'package:sber_app/app/theme/strings.dart';

final user = User(image: Images.userProfileImage, name: Strings.userName);

final enabled = Chapter(title: Strings.enabledTitle, description: Strings.enabledDescription);

final tariffsAndLimits =
    Chapter(title: Strings.tariffsAndLimitsTitle, description: Strings.tariffsAndLimitsDescription);

final interests = Chapter(title: Strings.interestsTitle, description: Strings.interestsDescription);

final List<Service> services = [
  Service(
    image: Images.sberPrimeImage,
    serviceTitle: Strings.sberPrimeTitle,
    payment: Strings.sberPrimePayment,
    cost: Strings.serviceCost 
  ),
  Service(
    image: Images.transfersImage,
    serviceTitle: Strings.transfersTitle,
    payment: Strings.transfersPayment,
    cost: Strings.serviceCost
  ),
];

final List<TariffsAndLimitsButton> tarifsAndLimitsButtons = [
  TariffsAndLimitsButton(
    image: Images.editLimitImage,
    title: Strings.editLimitTitle,
    description: Strings.editLimitDescription
  ),
  TariffsAndLimitsButton(
    image: Images.transfersEmptyImage,
    title: Strings.transfersComissionTitle,
    description: Strings.transfersComissionDescription
  ),
  TariffsAndLimitsButton(
    image: Images.infoImage,
    title: Strings.infoTitle
  )
];
