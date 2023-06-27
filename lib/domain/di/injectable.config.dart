// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/Items/items_bloc.dart' as _i28;
import '../../application/login/login_bloc.dart' as _i29;
import '../../application/my_order/my_order_bloc.dart' as _i30;
import '../../application/NearMeHotelList/promoslider/promoslider_bloc.dart'
    as _i16;
import '../../application/NearMeHotelList/restaraunt/allrestaraunts_bloc.dart'
    as _i27;
import '../../application/place_order/place_order_bloc.dart' as _i31;
import '../../application/proceedToCheckOut/proceed_to_checkout_bloc.dart'
    as _i13;
import '../../application/search/bloc/search_bloc.dart' as _i33;
import '../../application/user_registarion/bloc/registration_bloc.dart' as _i32;
import '../../infrastructure/check_out/check_out_impli.dart' as _i6;
import '../../infrastructure/my_orders_impli/my_orders_imple.dart' as _i10;
import '../../infrastructure/place_order/place_order_Impl.dart' as _i12;
import '../../infrastructure/promo_slider/promoSlide_implimentation.dart'
    as _i15;
import '../../infrastructure/restaraunt/restarauntsImplimentation.dart' as _i22;
import '../../infrastructure/restrauntItemsimplimentation.dart/categoryImplimentation.dart'
    as _i20;
import '../../infrastructure/restrauntItemsimplimentation.dart/categorySubcategory.dart'
    as _i4;
import '../../infrastructure/restrauntItemsimplimentation.dart/restrauntItemImpt.dart'
    as _i18;
import '../../infrastructure/search/search_implimentation.dart' as _i26;
import '../../infrastructure/user/login_implementation.dart' as _i8;
import '../../infrastructure/user/user_register_implimentation.dart' as _i24;
import '../data/order_list_model/repo/order_list_repo.dart' as _i9;
import '../data/placeorder_model/repo/place_order_repo.dart' as _i11;
import '../data/proceed_to_checkout_model/checkoutRepo/checkout_repo.dart'
    as _i5;
import '../data/products/repo/categoryRepo.dart' as _i19;
import '../data/products/repo/itemsRepo.dart' as _i17;
import '../data/products/repo/subcategoryCategoryService.dart' as _i3;
import '../data/promo_slider/repo/promoSliderServices.dart' as _i14;
import '../data/restrauntsitems/ReastaurantsRep/RestaurantsService.dart'
    as _i21;
import '../data/search/search_repo/search_repo.dart' as _i25;
import '../data/user/login/loginrepo.dart' as _i7;
import '../data/user/userRepo/user_repo.dart'
    as _i23; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.CategorySubCategoryServise>(
      () => _i4.CategorySubCategory());
  gh.lazySingleton<_i5.CheckOutRepo>(() => _i6.CheckOutImplimentation());
  gh.lazySingleton<_i7.LoginRepo>(() => _i8.LoginImplimentation());
  gh.lazySingleton<_i9.OrderListRepo>(() => _i10.MyOrdersImplements());
  gh.lazySingleton<_i11.PlaceOrderService>(
      () => _i12.PlaceOrderImplementation());
  gh.factory<_i13.ProceedToCheckoutBloc>(
      () => _i13.ProceedToCheckoutBloc(get<_i5.CheckOutRepo>()));
  gh.lazySingleton<_i14.PromoSliderServices>(
      () => _i15.PromoSliderImplimentation());
  gh.factory<_i16.PromosliderBloc>(
      () => _i16.PromosliderBloc(get<_i14.PromoSliderServices>()));
  gh.lazySingleton<_i17.RestrauntItemServices>(
      () => _i18.RestrauntItemImplimentation());
  gh.lazySingleton<_i19.RestrauntcategoryServices>(
      () => _i20.RestrauntItemImplimentation());
  gh.lazySingleton<_i21.RestrauntsServises>(
      () => _i22.RestaurantImplimentation());
  gh.lazySingleton<_i23.UserRepo>(() => _i24.UserRegisterImplimentation());
  gh.lazySingleton<_i25.searchServises>(() => _i26.SearchImplementation());
  gh.factory<_i27.AllrestarauntsBloc>(() => _i27.AllrestarauntsBloc(
        get<_i21.RestrauntsServises>(),
        get<_i25.searchServises>(),
      ));
  gh.factory<_i28.ItemsBloc>(() => _i28.ItemsBloc(
        get<_i17.RestrauntItemServices>(),
        get<_i19.RestrauntcategoryServices>(),
        get<_i3.CategorySubCategoryServise>(),
      ));
  gh.factory<_i29.LoginBloc>(() => _i29.LoginBloc(get<_i7.LoginRepo>()));
  gh.factory<_i30.MyOrderBloc>(
      () => _i30.MyOrderBloc(get<_i9.OrderListRepo>()));
  gh.factory<_i31.PlaceOrderBloc>(
      () => _i31.PlaceOrderBloc(get<_i11.PlaceOrderService>()));
  gh.factory<_i32.RegistrationBloc>(
      () => _i32.RegistrationBloc(get<_i23.UserRepo>()));
  gh.factory<_i33.SearchBloc>(
      () => _i33.SearchBloc(get<_i25.searchServises>()));
  return get;
}
