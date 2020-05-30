class PlayList {
  String title;
  String secondary;
  String trailing;

  PlayList({this.title, this.secondary, this.trailing});
}

List<PlayList> playlists = [
  PlayList(
      title: "Independently Good Design",
      secondary: "Wireframe",
      trailing: "21:00"),
  PlayList(title: "Whiteout", secondary: "Blackout", trailing: "26:54"),
  PlayList(
      title: "The Life of Thomas Edison",
      secondary: "The Book Review",
      trailing: "21:00"),
  PlayList(
      title: "28. Bob Newhart",
      secondary: "Conan O’Brien Needs a Friend",
      trailing: "58:04"),
  PlayList(
      title: "Hari Kunzru Reads Robert …",
      secondary: "The New Yorker: Fiction",
      trailing: "58:04"),
];
