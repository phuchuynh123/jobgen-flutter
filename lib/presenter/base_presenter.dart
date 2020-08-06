abstract class BaseContract {
  void onShowLoading() {}

  void onHideLoading() {}
}

abstract class BasePresenter<T extends BaseContract> {
  T view;
  void dispose() {
    view = null;
  }
}