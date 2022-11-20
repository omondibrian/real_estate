import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tenants/domain/Tenant/datasources/internal_datasource.dart';

import 'package:tenants/domain/Tenant/entity/tenant_credentials.dart';
import 'package:tenants/domain/Tenant/entity/tenant_entity.dart';
import 'package:tenants/domain/Tenant/repository/tenant_repository.dart';

part 'tenant_bloc.freezed.dart';
part 'tenant_event.dart';
part 'tenant_state.dart';

@injectable
class TenantBloc extends Bloc<TenantEvent, TenantState> {
  final TenantRepository _repo;
  final InternalDataSource _localData;

  TenantBloc(this._repo, this._localData) : super(const _Initial()) {
    on<SignIn>(_handleSignIn);
    on<SignUp>(_handleSignUp);
    on<LogOut>(_handleLogOut);
    on<ResetPassword>(_handlePasswordReset);
    on<FetchProfile>(_handleFetchUserData);
    on<VerifyOtpToken>(_handleOtpVerification);
  }

  Future<void> _handleSignIn(SignIn event, Emitter<TenantState> emit) async {
    emit(TenantState.loadingInProgress(state: true));
    var res = await _repo.emailSignIn(event.credentials);
    res.fold(
      (l) => emit(TenantState.applicationErrors(msg: l.msg)),
      (r) => emit(TenantState.snackBarMsgs(msg: r)),
    );
    emit(TenantState.loadingInProgress(state: false));
  }

  Future<void> _handleSignUp(SignUp event, Emitter<TenantState> emit) async {
    emit(TenantState.loadingInProgress(state: true));

    var res = await _repo.registerNewUser(
      name: event.name,
      email: event.email,
      phoneNumber: event.phoneNumber,
      password: event.password,
      role: event.role,
    );
    res.fold(
      (err) => emit(TenantState.applicationErrors(msg: err.msg)),
      (r) => emit(TenantState.snackBarMsgs(msg: r)),
    );
    emit(TenantState.loadingInProgress(state: false));
  }

  Future<void> _handleLogOut(LogOut event, Emitter<TenantState> emit) async {
    emit(TenantState.loadingInProgress(state: true));
    //clear cache
    await _localData.clearUserData();
    emit(TenantState.loadingInProgress(state: false));
    emit(
      const TenantState.snackBarMsgs(msg: "Tenant successfully loged out"),
    );
  }

  Future<void> _handleFetchUserData(
      FetchProfile event, Emitter<TenantState> emit) async {
    emit(TenantState.loadingInProgress(state: true));
    var profile = await _repo.fetchUserProfile();
    profile.fold(
      (err) => emit(TenantState.applicationErrors(msg: err.msg)),
      (tenant) => emit(TenantState.initial(tenant: tenant)),
    );
    emit(TenantState.loadingInProgress(state: false));
  }

  Future<void> _handlePasswordReset(
      ResetPassword event, Emitter<TenantState> emit) async {
    emit(TenantState.loadingInProgress(state: true));
    var res = await _repo.passwordReset(event.email);
    res.fold(
      (err) => emit(TenantState.applicationErrors(msg: err.msg)),
      (msg) => emit(TenantState.snackBarMsgs(msg: msg)),
    );
    emit(TenantState.loadingInProgress(state: false));
  }

  Future<void> _handleOtpVerification(
      VerifyOtpToken event, Emitter<TenantState> emit) async {
    emit(TenantState.loadingInProgress(state: true));
    var res = await _repo.verifyOTP(event.otp,);
    res.fold(
      (err) => emit(TenantState.applicationErrors(msg: err.msg)),
      (msg) => emit(TenantState.snackBarMsgs(msg: msg)),
    );
    emit(TenantState.loadingInProgress(state: false));
  }

  Future<void> _handleProfileUpdates(
      UpdateProfile event, Emitter<TenantState> emit) async {
    emit(TenantState.loadingInProgress(state: true));
    var updates = event.updates;
    if (updates.containsKey('password')) {
      var res = await _repo.updatePassword(updates["password"]);
      res.fold(
        (err) => emit(TenantState.applicationErrors(msg: err.msg)),
        (msg) => emit(TenantState.snackBarMsgs(msg: msg)),
      );
    } else {
      var res = await _repo.updateProfile(updates);
      res.fold(
        (err) => emit(TenantState.applicationErrors(msg: err.msg)),
        (entity) => emit(TenantState.initial(tenant: entity)),
      );
    }

    emit(TenantState.loadingInProgress(state: false));
  }
}
