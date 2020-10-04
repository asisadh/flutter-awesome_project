class NewsConstant {
  static final CACHED_NEWS = "CACHED_NEWS";
  // create your api from newsapi.org
  static final API_KEY = "<Add-your-key>";
  static final BASE_URL =
      "http://newsapi.org/v2/top-headlines?country=us&sortBy=publishedAt&pageSize=10&apiKey=$API_KEY";
}

class MovieConstant {
  static final CACHED_MOVIES = "CACHED_MOVIES";
  static final API_KEY = "";
  static final BASE_URL = "";
}

class PlaceConstant {
  // create your api from geoapify.com
  static final API_KEY = "<Add-your-key>";
  static final BASE_URL =
      "https://api.geoapify.com/v2/places?categories=catering.restaurant&filter=rect:85.25041494488165,27.770211285478354,85.38574187133962,27.636561838925147&limit=8&apiKey=$API_KEY";
}

class GitHubConstant {
  static final USER_NAME = "asisadh";
  static final BASE_URL = "https://api.github.com/users/$USER_NAME/repos";
}
