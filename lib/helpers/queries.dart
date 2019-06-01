class Queries {
  String news = r"""query {
      news{
        id
        title
        time
        link
        source{
          id
          name
          logo
        }
        image
      }
    }
  """;

  String events = r"""query {
      events{
        id
        name
        venue
        organizer
        date
        time
        description
        registrationLink
        banner
      }
    }
  """;

  String tutorials = r"""query {
      tutorials{
        id
        title
        author
        publishedDate
        link
        source{
          id
          name
          logo
        }
      }
    }
  """;

  String communities = r"""query {
      communities{
        id
        name
        description
        ircLink
        communityLink
      }
    }
  """;

  String widgets = r"""query {
        widgets{
          id
          name
          description
          image
          link
        }
    }
  """;
}
