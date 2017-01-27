class TrainingSamples
  MATCHING_FIRST_LAST = [{"first_name" => "Kevin", "middle_name" => nil, "last_name" =>  "Coleman", "born_at" => nil, "registered_address1" => "520 South Grand", "registered_address2" => "2nd Floor", "registered_address3" => nil, "registered_city" => "Los Angeles", "registered_state" => "CA", "registered_zip" => "90071", "registered_country_code" => "US"},
                         {"first_name" => "Kevin", "middle_name" => nil, "last_name" =>  "Coleman", "born_at" => nil, "registered_address1" => "520 South Grand", "registered_address2" => "2nd Floor", "registered_address3" => nil, "registered_city" => "Los Angeles", "registered_state" => "CA", "registered_zip" => "90071", "registered_country_code" => "US"},
                         1]

  MATCHING_FIRST_LAST_BLANK_MIDDLE = [{"first_name" =>  "Kevin", "middle_name" => nil, "last_name" =>  "Coleman", "born_at" => "08/16/1991", "registered_address1" => "520 South Grand", "registered_address2" => "2nd Floor", "registered_address3" => nil, "registered_city" => "Los Angeles", "registered_state" => "CA", "registered_zip" => "90071", "registered_country_code" => "US"},
                                 {"first_name" =>  "Kevin", "middle_name" => "J", "last_name" =>  "Coleman", "born_at" => "08/16/1991", "registered_address1" => "520 South Grand", "registered_address2" => "2nd Floor", "registered_address3" => nil, "registered_city" => "Los Angeles", "registered_state" => "CA", "registered_zip" => "90071", "registered_country_code" => "US"},
                                 1]

  MATCHING_FIRST_LAST_MIDDLE = [{"first_name" =>  "Kevin", "middle_name" => "J", "last_name" =>  "Coleman", "born_at" => "08/16/1991", "registered_address1" => "520 South Grand", "registered_address2" => "2nd Floor", "registered_address3" => nil, "registered_city" => "Los Angeles", "registered_state" => "CA", "registered_zip" => "90071", "registered_country_code" => "US"},
                            {"first_name" =>  "Kevin", "middle_name" => "J", "last_name" =>  "Coleman", "born_at" => "08/16/1991", "registered_address1" => "520 South Grand", "registered_address2" => "2nd Floor", "registered_address3" => nil, "registered_city" => "Los Angeles", "registered_state" => "CA", "registered_zip" => "90071", "registered_country_code" => "US"},
                            1]

  MATCHING_FIRST_LAST_MIDDLE2 = [{"first_name" =>  "Daryl", "middle_name" => "L", "last_name" =>  "Abbott", "born_at" => nil, "registered_address1" => "1444 Rhode Island Ave NW", "registered_address2" => "903", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005", "registered_country_code" => "US"},
                            {"first_name" =>  "Daryl", "middle_name" => "L", "last_name" =>  "Abbott", "born_at" => "'01/01/1950", "registered_address1" => "1444 Rhode Island Ave NW", "registered_address2" => "903", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005", "registered_country_code" => "US"},
                            1]

  NOT_MATCHING_FIRST = [{"first_name" => "Kevin", "middle_name" => nil, "last_name" =>  "Coleman", "born_at" => "08/16/1991", "registered_address1" => "520 South Grand", "registered_address2" => "2nd Floor", "registered_address3" => nil, "registered_city" => "Los Angeles", "registered_state" => "CA", "registered_zip" => "90071", "registered_country_code" => "US"},
                        {"first_name" =>  "Megan", "middle_name" => nil, "last_name" =>  "Coleman", "born_at" => "04/29/1995", "registered_address1" => "520 South Grand", "registered_address2" => "2nd Floor", "registered_address3" => nil, "registered_city" => "Los Angeles", "registered_state" => "CA", "registered_zip" => "90071", "registered_country_code" => "US"},
                        0]

  MATCHING_FIRST_LAST_NOT_MIDDLE = [{"first_name" =>  "Kevin", "middle_name" => "M", "last_name" =>  "Coleman", "born_at" => "08/16/1991", "registered_address1" => "520 South Grand", "registered_address2" => "2nd Floor", "registered_address3" => nil, "registered_city" => "Los Angeles", "registered_state" => "CA", "registered_zip" => "90071", "registered_country_code" => "US"},
                                    {"first_name" =>  "Kevin", "middle_name" => "J", "last_name" =>  "Coleman", "born_at" => "11/09/1961", "registered_address1" => "520 South Grand", "registered_address2" => "2nd Floor", "registered_address3" => nil, "registered_city" => "Los Angeles", "registered_state" => "CA", "registered_zip" => "90071", "registered_country_code" => "US"},
                                    0]

  DIFFERENT_NAME_AND_ADDRESS = [{"first_name" =>  "Gregory", "middle_name" => "K", "last_name" =>  "Diamond", "born_at" => nil, "registered_address1" => "1420 N St NW", "registered_address2" => "707", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005", "registered_country_code" => "US"},
                                    {"first_name" =>  "Jason", "middle_name" => "B", "last_name" =>  "Jasienowski", "born_at" => "11/01/1972", "registered_address1" => "1401 N St NW", "registered_address2" => "801", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005", "registered_country_code" => "US"},
                                    0]
  DIFFERENT_NAME_AND_ADDRESS2 = [{"first_name" =>  "Gregory", "middle_name" => "K", "last_name" =>  "Diamond", "born_at" => nil, "registered_address1" => "1420 N St NW", "registered_address2" => "707", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005", "registered_country_code" => "US"},
                                    {"first_name" =>  "Jason", "middle_name" => "B", "last_name" =>  "Jasienowski", "born_at" => "11/01/1972", "registered_address1" => "1401 N St NW", "registered_address2" => "801", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005", "registered_country_code" => "US"},
                                    0]

  DIFFERENT_NAME_AND_ADDRESS3 = [{"first_name" =>  "Gregory", "middle_name" => "K", "last_name" =>  "Diamond", "born_at" => nil, "registered_address1" => "1420 N St NW", "registered_address2" => "707", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005", "registered_country_code" => "US"},
                                    {"first_name" =>  "Tereso", "middle_name" => "D", "last_name" =>  "Carcamo", "born_at" => nil, "registered_address1" => "1220 12TH St NW", "registered_address2" => "APT 311", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005-4332", "registered_country_code" => "US"},
                                    0]

  MATCHING_FIRST_NOT_LAST = [{"first_name" =>  "Daryl", "middle_name" => "L", "last_name" =>  "Abbott", "born_at" => nil, "registered_address1" => "1444 Rhode Island Ave NW", "registered_address2" => "903", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005", "registered_country_code" => "US"},
                                  {"first_name" =>  "Daryl", "middle_name" => "T", "last_name" =>  "Mccrae", "born_at" => nil, "registered_address1" => "1200 N St NW", "registered_address2" => "806", "registered_address3" => nil, "registered_city" => "Washington", "registered_state" => "DC", "registered_zip" => "20005", "registered_country_code" => "US"},
                                  0]

  MATCHING_FIRST_NOT_LAST2 = [{
                                               "first_name" => "Teblez",
                                              "middle_name" => nil,
                                                "last_name" => "Abai",
                                                  "born_at" => nil,
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
                                  "registered_country_code" => "US",
                                         "registered_state" => "DC",
                                          "registered_city" => "Washington",
                                           "registered_zip" => "20005",
                                      "registered_address1" => "1444 Rhode Island Ave NW",
                                      "registered_address2" => "903",
                                      "registered_address3" => nil
                              },
                              0]

  DEFAULTS = [MATCHING_FIRST_LAST,
              MATCHING_FIRST_LAST_BLANK_MIDDLE,
              MATCHING_FIRST_LAST_MIDDLE,
              MATCHING_FIRST_LAST_MIDDLE2,
              NOT_MATCHING_FIRST,
              MATCHING_FIRST_LAST_NOT_MIDDLE,
              DIFFERENT_NAME_AND_ADDRESS,
              DIFFERENT_NAME_AND_ADDRESS2,
              DIFFERENT_NAME_AND_ADDRESS3,
              MATCHING_FIRST_NOT_LAST,
              MATCHING_FIRST_NOT_LAST2,
              MATCHING_BIRTHDATE_NOT_NAMES]
end
