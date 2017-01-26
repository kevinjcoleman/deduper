class TrainingSamples
  MATCHING_FIRST_LAST = [{"first_name" => "Kevin", "middle_name" => nil, "last_name" =>  "Coleman", "born_at" => nil},
                         {"first_name" => "Kevin", "middle_name" => nil, "last_name" =>  "Coleman", "born_at" => nil},
                         1]
  NOT_MATCHING_FIRST = [{"first_name" => "Kevin", "middle_name" => nil, "last_name" =>  "Coleman", "born_at" => "08/16/1991"},
                        {"first_name" =>  "Megan", "middle_name" => nil, "last_name" =>  "Coleman", "born_at" => "04/29/1995"},
                        0]
  MATCHING_FIRST_LAST_BLANK_MIDDLE = [{"first_name" =>  "Kevin", "middle_name" => nil, "last_name" =>  "Coleman", "born_at" => "08/16/1991"},
                                      {"first_name" =>  "Kevin", "middle_name" => "J", "last_name" =>  "Coleman", "born_at" => "08/16/1991"},
                                      1]
  MATCHING_FIRST_LAST_NOT_MIDDLE = [{"first_name" =>  "Kevin", "middle_name" => "M", "last_name" =>  "Coleman", "born_at" => "08/16/1991"},
                                    {"first_name" =>  "Kevin", "middle_name" => "J", "last_name" =>  "Coleman", "born_at" => "11/09/1961"},
                                    0]

  DEFAULTS = [MATCHING_FIRST_LAST,
              NOT_MATCHING_FIRST,
              MATCHING_FIRST_LAST_BLANK_MIDDLE,
              MATCHING_FIRST_LAST_NOT_MIDDLE]
end
