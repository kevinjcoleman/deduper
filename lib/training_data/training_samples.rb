class TrainingSamples
  MATCHING_FIRST_LAST = [{"first_name" => "Kevin", "middle_name" => nil, "last_name" =>  "Coleman", "born_at" => nil, "suffix" => "JR", "registered_address1" => "520 South Grand", "registered_address2" => "2nd Floor", "registered_address3" => nil, "registered_city" => "Los Angeles", "registered_state" => "CA", "registered_zip" => "90071", "registered_country_code" => "US"},
                         {"first_name" => "Kevin", "middle_name" => nil, "last_name" =>  "Coleman", "born_at" => nil, "suffix" => "JR","registered_address1" => "520 South Grand", "registered_address2" => "2nd Floor", "registered_address3" => nil, "registered_city" => "Los Angeles", "registered_state" => "CA", "registered_zip" => "90071", "registered_country_code" => "US"},
                         1]

  MATCHING_FIRST_LAST_BLANK_MIDDLE = [{"first_name" =>  "Kevin", "middle_name" => nil, "last_name" =>  "Coleman", "born_at" => "08/16/1991", "suffix" => nil, "registered_address1" => "520 South Grand", "registered_address2" => "2nd Floor", "registered_address3" => nil, "registered_city" => "Los Angeles", "registered_state" => "CA", "registered_zip" => "90071", "registered_country_code" => "US"},
                                 {"first_name" =>  "Kevin", "middle_name" => "J", "last_name" =>  "Coleman", "born_at" => "08/16/1991", "suffix" => nil, "registered_address1" => "520 South Grand", "registered_address2" => "2nd Floor", "registered_address3" => nil, "registered_city" => "Los Angeles", "registered_state" => "CA", "registered_zip" => "90071", "registered_country_code" => "US"},
                                 1]

  MATCHING_FIRST_LAST_MIDDLE = [{"first_name" =>  "Kevin", "middle_name" => "J", "last_name" =>  "Coleman", "born_at" => "08/16/1991", "suffix" => nil, "registered_address1" => "520 South Grand", "registered_address2" => "2nd Floor", "registered_address3" => nil, "registered_city" => "Los Angeles", "registered_state" => "CA", "registered_zip" => "90071", "registered_country_code" => "US"},
                            {"first_name" =>  "Kevin", "middle_name" => "J", "last_name" =>  "Coleman", "born_at" => "08/16/1991", "suffix" => nil, "registered_address1" => "520 South Grand", "registered_address2" => "2nd Floor", "registered_address3" => nil, "registered_city" => "Los Angeles", "registered_state" => "CA", "registered_zip" => "90071", "registered_country_code" => "US"},
                            1]

  MATCHING_FIRST_LAST_MIDDLE2 = [{"first_name" =>  "Daryl", "middle_name" => "L", "last_name" =>  "Abbott", "born_at" => nil, "suffix" => nil, "registered_address1" => "1444 Rhode Island Ave NW", "registered_address2" => "903", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005", "registered_country_code" => "US"},
                            {"first_name" =>  "Daryl", "middle_name" => "L", "last_name" =>  "Abbott", "born_at" => "01/01/1950", "suffix" => nil, "registered_address1" => "1444 Rhode Island Ave NW", "registered_address2" => "903", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005", "registered_country_code" => "US"},
                            1]

  MATCHING_FIRST_LAST_MISSING_SOME_ADDRESS = [{"first_name" =>  "Teblez", "middle_name" => nil, "last_name" =>  "Abai", "born_at" => nil, "suffix" => nil, "registered_address1" => "1220 12th St NW", "registered_address2" => "912", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005", "registered_country_code" => "US"},
                            {"first_name" =>  "Teblez", "middle_name" => nil, "last_name" =>  "Abai", "born_at" => nil, "suffix" => nil, "registered_address1" => "1220 12TH St NW", "registered_address2" => "APT 912", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005-4358", "registered_country_code" => "US"},
                            1]

  MATCHING_FIRST_LAST_NOT_BDAY = [{"first_name" =>  "Robert", "middle_name" => "L", "last_name" =>  "Abrams", "born_at" => "12/16/1921", "suffix" => nil, "registered_address1" => "1330 Massachusetts Ave NW", "registered_address2" => "414", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005", "registered_country_code" => "US"},
                            {"first_name" =>  "Robert", "middle_name" => "L", "last_name" =>  "Abrams", "born_at" => nil, "suffix" => nil, "registered_address1" => "1330 Massachusetts Ave NW", "registered_address2" => "414", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005", "registered_country_code" => "US"},
                            1]

  MATCHING_ALMOST_FIRST_LAST_NOT_BDAY2 = [{"first_name" =>  "Rut", "middle_name" => nil, "last_name" =>  "Birhanu", "born_at" => nil, "suffix" => nil, "registered_address1" => "1301 14th St NW", "registered_address2" => "302", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005", "registered_country_code" => "US"},
                            {"first_name" =>  "Ruth", "middle_name" => nil, "last_name" =>  "Birhanu", "born_at" => nil, "suffix" => nil, "registered_address1" => "1301 14th St NW", "registered_address2" => "302", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005", "registered_country_code" => "US"},
                            1]

  MATCHING_FIRST_LAST_NOT_BDAY2 = [{"first_name" =>  "Paul", "middle_name" => "C", "last_name" =>  "Adair", "born_at" => "02/01/1965", "suffix" => nil, "registered_address1" => "1325 13th St NW", "registered_address2" => "414", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005", "registered_country_code" => "US"},
                            {"first_name" =>  "Paul", "middle_name" => "C", "last_name" =>  "Adair", "born_at" => nil, "suffix" => nil, "registered_address1" => "1325 13th St NW", "registered_address2" => "414", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005", "registered_country_code" => "US"},
                            1]

  NOT_MATCHING_FIRST = [{"first_name" => "Kevin", "middle_name" => nil, "last_name" =>  "Coleman", "born_at" => "08/16/1991", "suffix" => nil,  "registered_address1" => "520 South Grand", "registered_address2" => "2nd Floor", "registered_address3" => nil, "registered_city" => "Los Angeles", "registered_state" => "CA", "registered_zip" => "90071", "registered_country_code" => "US"},
                        {"first_name" =>  "Megan", "middle_name" => nil, "last_name" =>  "Coleman", "born_at" => "04/29/1995", "suffix" => nil,  "registered_address1" => "520 South Grand", "registered_address2" => "2nd Floor", "registered_address3" => nil, "registered_city" => "Los Angeles", "registered_state" => "CA", "registered_zip" => "90071", "registered_country_code" => "US"},
                        0]

  MATCHING_FIRST_LAST_NOT_MIDDLE = [{"first_name" =>  "Kevin", "middle_name" => "M", "last_name" =>  "Coleman", "born_at" => "08/16/1991", "suffix" => "SR", "registered_address1" => "520 South Grand", "registered_address2" => "2nd Floor", "registered_address3" => nil, "registered_city" => "Los Angeles", "registered_state" => "CA", "registered_zip" => "90071", "registered_country_code" => "US"},
                                    {"first_name" =>  "Kevin", "middle_name" => "J", "last_name" =>  "Coleman", "born_at" => "11/09/1961", "suffix" => "JR", "registered_address1" => "520 South Grand", "registered_address2" => "2nd Floor", "registered_address3" => nil, "registered_city" => "Los Angeles", "registered_state" => "CA", "registered_zip" => "90071", "registered_country_code" => "US"},
                                    0]

  DIFFERENT_NAME_AND_ADDRESS = [{"first_name" =>  "Gregory", "middle_name" => "K", "last_name" =>  "Diamond", "born_at" => nil, "suffix" => nil, "registered_address1" => "1420 N St NW", "registered_address2" => "707", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005", "registered_country_code" => "US"},
                                    {"first_name" =>  "Jason", "middle_name" => "B", "last_name" =>  "Jasienowski", "born_at" => "11/01/1972", "suffix" => nil, "registered_address1" => "1401 N St NW", "registered_address2" => "801", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005", "registered_country_code" => "US"},
                                    0]
  DIFFERENT_NAME_AND_ADDRESS2 = [{"first_name" =>  "Gregory", "middle_name" => "K", "last_name" =>  "Diamond", "born_at" => nil, "suffix" => nil, "registered_address1" => "1420 N St NW", "registered_address2" => "707", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005", "registered_country_code" => "US"},
                                    {"first_name" =>  "Jason", "middle_name" => "B", "last_name" =>  "Jasienowski", "born_at" => "11/01/1972", "suffix" => nil, "registered_address1" => "1401 N St NW", "registered_address2" => "801", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005", "registered_country_code" => "US"},
                                    0]

  DIFFERENT_NAME_AND_ADDRESS3 = [{"first_name" =>  "Gregory", "middle_name" => "K", "last_name" =>  "Diamond", "born_at" => nil, "suffix" => nil, "registered_address1" => "1420 N St NW", "registered_address2" => "707", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005", "registered_country_code" => "US"},
                                    {"first_name" =>  "Tereso", "middle_name" => "D", "last_name" =>  "Carcamo", "born_at" => nil, "suffix" => nil, "registered_address1" => "1220 12TH St NW", "registered_address2" => "APT 311", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005-4332", "registered_country_code" => "US"},
                                    0]

  MATCHING_FIRST_NOT_LAST = [{"first_name" =>  "Daryl", "middle_name" => "L", "last_name" =>  "Abbott", "born_at" => nil, "suffix" => nil, "registered_address1" => "1444 Rhode Island Ave NW", "registered_address2" => "903", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005", "registered_country_code" => "US"},
                                  {"first_name" =>  "Daryl", "middle_name" => "T", "last_name" =>  "Mccrae", "born_at" => nil, "suffix" => nil, "registered_address1" => "1200 N St NW", "registered_address2" => "806", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005", "registered_country_code" => "US"},
                                  0]

  MATCHING_FIRST_NOT_LAST2 = [{
                                               "first_name" => "Teblez",
                                              "middle_name" => nil,
                                                "last_name" => "Abai",
                                                  "born_at" => nil,
                                                  "suffix" => nil,
                                  "registered_country_code" => "US",
                                         "registered_state" => "DC",
                                          "registered_city" => "Washington",
                                           "registered_zip" => "20005",
                                      "registered_address1" => "1220 12th St NW",
                                      "registered_address2" => "912",
                                      "registered_address3" => nil
                              },
                              {
                                               "first_name" => "Daryl",
                                              "middle_name" => "L",
                                                "last_name" => "Abbott",
                                                  "born_at" => nil,
                                                  "suffix" => nil,
                                  "registered_country_code" => "US",
                                         "registered_state" => "DC",
                                          "registered_city" => "Washington",
                                           "registered_zip" => "20005",
                                      "registered_address1" => "1444 Rhode Island Ave NW",
                                      "registered_address2" => "903",
                                      "registered_address3" => nil
                              },
                              0]

  MATCHING_BIRTHDATE_NOT_NAMES = [{
                                               "first_name" => "Jeffrey",
                                              "middle_name" => "B",
                                                "last_name" => "Trammell",
                                                  "born_at" => "01/01/1950",
                                                  "suffix" => nil,
                                  "registered_country_code" => "US",
                                         "registered_state" => "DC",
                                          "registered_city" => "Washington",
                                           "registered_zip" => "20005",
                                      "registered_address1" => "1425 Rhode Island Ave NW",
                                      "registered_address2" => "60",
                                      "registered_address3" => nil
                              },
                              {
                                               "first_name" => "Daryl",
                                              "middle_name" => "L",
                                                "last_name" => "Abbott",
                                                  "born_at" => "01/01/1950",
                                                  "suffix" => nil,
                                  "registered_country_code" => "US",
                                         "registered_state" => "DC",
                                          "registered_city" => "Washington",
                                           "registered_zip" => "20005",
                                      "registered_address1" => "1444 Rhode Island Ave NW",
                                      "registered_address2" => "903",
                                      "registered_address3" => nil
                              },
                              0]

  MATCHING_MOST_BUT_SUFFIX = [{
                                               "first_name" => "Arnaldo",
                                              "middle_name" => "A",
                                                "last_name" => "Garro",
                                                  "born_at" => "08/01/1967",
                                                  "suffix" => "Jr",
                                  "registered_country_code" => "US",
                                         "registered_state" => "DC",
                                          "registered_city" => "Washington",
                                           "registered_zip" => "20005",
                                      "registered_address1" => "1300 13th St NW",
                                      "registered_address2" => "801",
                                      "registered_address3" => nil
                              },
                              {
                                               "first_name" => "Arnaldo",
                                              "middle_name" => "A",
                                                "last_name" => "Garro",
                                                  "born_at" => nil,
                                                  "suffix" => "Sr",
                                  "registered_country_code" => "US",
                                         "registered_state" => "DC",
                                          "registered_city" => "Washington",
                                           "registered_zip" => "20005",
                                      "registered_address1" => "1330 Massachusetts Ave NW",
                                      "registered_address2" => "825",
                                      "registered_address3" => nil
                              },
                              0]

  MATCHING_MOST_BUT_SUFFIX2 = [{
                                               "first_name" => "James",
                                              "middle_name" => "L",
                                                "last_name" => "Green",
                                                  "born_at" => nil,
                                                  "suffix" => "III",
                                  "registered_country_code" => "US",
                                         "registered_state" => "DC",
                                          "registered_city" => "Washington",
                                           "registered_zip" => "20005",
                                      "registered_address1" => "1101 N St NW",
                                      "registered_address2" => nil,
                                      "registered_address3" => nil
                              },
                              {
                                               "first_name" => "James",
                                              "middle_name" => "L",
                                                "last_name" => "Green",
                                                  "born_at" => "02/01/1961",
                                                  "suffix" => "JR",
                                  "registered_country_code" => "US",
                                         "registered_state" => "DC",
                                          "registered_city" => "Washington",
                                           "registered_zip" => "20005-4301",
                                      "registered_address1" => "1107 N St NW",
                                      "registered_address2" => nil,
                                      "registered_address3" => nil
                              },
                              0]
  MATCHING_MOST_BUT_NOT_LAST_NAME = [{
                                               "first_name" => "Eric",
                                              "middle_name" => "A",
                                                "last_name" => "Greenwald",
                                                  "born_at" => "07/01/1968",
                                                  "suffix" => nil,
                                  "registered_country_code" => "US",
                                         "registered_state" => "DC",
                                          "registered_city" => "Washington",
                                           "registered_zip" => "20005",
                                      "registered_address1" => "1531 Vermont Ave NW",
                                      "registered_address2" => nil,
                                      "registered_address3" => nil
                              },
                              {
                                               "first_name" => "Eric",
                                              "middle_name" => "N",
                                                "last_name" => "Lehot",
                                                  "born_at" => "07/01/1968",
                                                  "suffix" => nil,
                                  "registered_country_code" => "US",
                                         "registered_state" => "DC",
                                          "registered_city" => "Washington",
                                           "registered_zip" => "20005",
                                      "registered_address1" => "1437 Rhode Island Ave NW",
                                      "registered_address2" => "101",
                                      "registered_address3" => nil
                              },
                              0]

 MATCHING_ADDRESS_BUT_NOT_NAME = [{
                                             "first_name" => "Teblez",
                                            "middle_name" => nil,
                                              "last_name" => "Abai",
                                                "born_at" => nil,
                                                "suffix" => nil,
                                "registered_country_code" => "US",
                                       "registered_state" => "DC",
                                        "registered_city" => "Washington",
                                         "registered_zip" => "20005",
                                    "registered_address1" => "1220 12th St NW",
                                    "registered_address2" => "912",
                                    "registered_address3" => nil
                            },
                            {
                                             "first_name" => "Leshan",
                                            "middle_name" => "S",
                                              "last_name" => "Abela",
                                                "born_at" => nil,
                                                "suffix" => nil,
                                "registered_country_code" => "US",
                                       "registered_state" => "DC",
                                        "registered_city" => "Washington",
                                         "registered_zip" => "20005",
                                    "registered_address1" => "1220 12th St NW",
                                    "registered_address2" => "605",
                                    "registered_address3" => nil
                            },
                            0]

  MATCHING_NAME_BUT_NOT_MIDDLE_OR_ADDRESS = [{
                                              "first_name" => "David",
                                             "middle_name" => "D",
                                               "last_name" => "Clark",
                                                 "born_at" => nil,
                                                 "suffix" => nil,
                                 "registered_country_code" => "US",
                                        "registered_state" => "DC",
                                         "registered_city" => "Washington",
                                          "registered_zip" => "20005",
                                     "registered_address1" => "1301 M St NW",
                                     "registered_address2" => "717",
                                     "registered_address3" => nil
                             },
                             {
                                              "first_name" => "David",
                                             "middle_name" => "M",
                                               "last_name" => "Clark",
                                                 "born_at" => nil,
                                                 "suffix" => nil,
                                 "registered_country_code" => "US",
                                        "registered_state" => "DC",
                                         "registered_city" => "Washington",
                                          "registered_zip" => "20005",
                                     "registered_address1" => "1325 13th St NW",
                                     "registered_address2" => "26",
                                     "registered_address3" => nil
                             },
                             0]
 MATCHING_NAME_BUT_NOT_MIDDLE_OR_ADDRESS2 = [{
                                             "first_name" => "John",
                                            "middle_name" => "G",
                                              "last_name" => "Collins",
                                                "born_at" => nil,
                                                "suffix" => nil,
                                "registered_country_code" => "US",
                                       "registered_state" => "DC",
                                        "registered_city" => "Washington",
                                         "registered_zip" => "20005",
                                    "registered_address1" => "1520 O St NW",
                                    "registered_address2" => "106",
                                    "registered_address3" => nil
                            },
                            {
                                             "first_name" => "John",
                                            "middle_name" => "H",
                                              "last_name" => "Collins",
                                                "born_at" => nil,
                                                "suffix" => nil,
                                "registered_country_code" => "US",
                                       "registered_state" => "DC",
                                        "registered_city" => "Washington",
                                         "registered_zip" => "20005",
                                    "registered_address1" => "1234 Massachusetts Ave NW",
                                    "registered_address2" => "806",
                                    "registered_address3" => nil
                            },
                            0]

  DEFAULTS = [MATCHING_FIRST_LAST,
              MATCHING_FIRST_LAST_BLANK_MIDDLE,
              MATCHING_FIRST_LAST_MIDDLE,
              MATCHING_FIRST_LAST_MIDDLE2,
              MATCHING_FIRST_LAST_MISSING_SOME_ADDRESS,
              MATCHING_FIRST_LAST_NOT_BDAY,
              MATCHING_FIRST_LAST_NOT_BDAY2,
              MATCHING_ALMOST_FIRST_LAST_NOT_BDAY2,
              NOT_MATCHING_FIRST,
              MATCHING_FIRST_LAST_NOT_MIDDLE,
              DIFFERENT_NAME_AND_ADDRESS,
              DIFFERENT_NAME_AND_ADDRESS2,
              DIFFERENT_NAME_AND_ADDRESS3,
              MATCHING_FIRST_NOT_LAST,
              MATCHING_FIRST_NOT_LAST2,
              MATCHING_BIRTHDATE_NOT_NAMES,
              MATCHING_MOST_BUT_SUFFIX,
              MATCHING_MOST_BUT_SUFFIX2,
              MATCHING_MOST_BUT_NOT_LAST_NAME,
              MATCHING_ADDRESS_BUT_NOT_NAME,
              MATCHING_NAME_BUT_NOT_MIDDLE_OR_ADDRESS,
              MATCHING_NAME_BUT_NOT_MIDDLE_OR_ADDRESS2]
end
