class DependencyInjecytion {
  static void init() async {
/*  

Use lazy initialization (Get.lazyPut) for controllers and non-critical services to optimize app startup time.
Use singletons (Get.put) for globally shared services like API clients, database helpers, etc.

************* Lazy initialization of controllers ****************
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<ProfileController>(() => ProfileController());

************* Singleton instance for services ******************
    Get.put<ApiService>(ApiService(), permanent: true);

*/
  }
}
