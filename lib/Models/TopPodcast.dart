class PlayListDeep {
  String date;
  String title;
  String secondary;
  String time;

  PlayListDeep({this.date, this.title, this.secondary, this.time});
}

class TopPodcast {
  String picture;
  String title;
  String secondary;
  bool favorite;
  List<PlayListDeep> playlist;

  TopPodcast(
      {this.picture, this.title, this.secondary, this.favorite, this.playlist});
}

List<PlayListDeep> detailedPlaylist = [
  PlayListDeep(
    date: "NOV 26, 2019",
    title: "10 Best Books of 2019",
    secondary: "On a special episode of the podcast",
    time: "1:14:32",
  ),
  PlayListDeep(
    date: "NOV 22, 2019",
    title: "The Authorized Life of the Iron Lady",
    secondary: "Charles Moore discusses the final ",
    time: "1:09:21",
  ),
  PlayListDeep(
    date: "NOV 15, 2019",
    title: "Revisiting Baldwin vs. Buckley",
    secondary: "Charles Moore discusses the final ",
    time: "1:09:21",
  ),
];

List<TopPodcast> topPodcastsHome = [
  TopPodcast(
    picture: "assets/images/one.png",
    title: "The Book Review",
    secondary: "The New York Times",
    favorite: false,
    playlist: detailedPlaylist,
  ),
  TopPodcast(
    picture: "assets/images/two.png",
    title: "The New Yorker: Fiction",
    secondary: "The New Yorker",
    favorite: true,
    playlist: detailedPlaylist,
  ),
];

List<TopPodcast> topPodcasts = [
  TopPodcast(
    picture: "assets/images/four.png",
    title: "The Guardian Books",
    secondary: "The Guardian",
    favorite: false,
    playlist: detailedPlaylist,
  ),
  TopPodcast(
    picture: "assets/images/one.png",
    title: "The Book Review",
    secondary: "The New York Times",
    favorite: false,
    playlist: detailedPlaylist,
  ),
  TopPodcast(
    picture: "assets/images/five.png",
    title: "All the Books!",
    secondary: "Book Riot",
    favorite: true,
    playlist: detailedPlaylist,
  ),
  TopPodcast(
    picture: "assets/images/six.png",
    title: "Audio Book Club",
    secondary: "Slate Magazine",
    favorite: false,
    playlist: detailedPlaylist,
  ),
  TopPodcast(
    picture: "assets/images/two.png",
    title: "The New Yorker: Fiction",
    secondary: "The New Yorker",
    favorite: true,
    playlist: detailedPlaylist,
  ),
  TopPodcast(
    picture: "assets/images/seven.png",
    title: "Books Of Your Life of malley",
    secondary: "Elizabeth Khuri Chandler",
    favorite: false,
    playlist: detailedPlaylist,
  ),
  TopPodcast(
    picture: "assets/images/eight.png",
    title: "Book Fight",
    secondary: "Mike Ingram and Tom McAllister",
    favorite: false,
    playlist: detailedPlaylist,
  ),
];
