City.create!([
  {name: "Jodhpur", code: "JU", description: "", state_id: 1, population: nil, wiki_link: nil},
  {name: "Jaipur", code: "JP", description: "", state_id: 1, population: nil, wiki_link: nil},
  {name: "Bikaner", code: "BKN", description: "", state_id: 1, population: nil, wiki_link: nil},
  {name: "Chennai", code: "CHN", description: "", state_id: 2, population: nil, wiki_link: nil},
  {name: "Erode", code: "ERD", description: "", state_id: 2, population: nil, wiki_link: nil},
  {name: "Coimbatore", code: "COMB", description: "", state_id: 2, population: nil, wiki_link: nil},
  {name: "Bangalore", code: "BAN", description: "", state_id: 3, population: nil, wiki_link: nil},
  {name: "Kolar", code: "KOL", description: "", state_id: 3, population: nil, wiki_link: nil},
  {name: "Haveri", code: "HAV", description: "", state_id: 3, population: nil, wiki_link: nil},
  {name: "Buckeye", code: "BUCK", description: "", state_id: 6, population: nil, wiki_link: nil},
  {name: "Camp Verde", code: "CMPV", description: "", state_id: 6, population: nil, wiki_link: nil},
  {name: "Carefree", code: "CAF", description: "", state_id: 6, population: nil, wiki_link: nil},
  {name: "Birmingham-Hoover", code: "BIH", description: "", state_id: 4, population: nil, wiki_link: nil},
  {name: "Huntsville", code: "HUN", description: "", state_id: 4, population: nil, wiki_link: nil},
  {name: "Montgomery", code: "MON", description: "", state_id: 4, population: nil, wiki_link: nil},
  {name: "Anchorage", code: "ANC", description: "", state_id: 5, population: nil, wiki_link: nil},
  {name: "Fairbanks", code: "FAIR", description: "", state_id: 5, population: nil, wiki_link: nil},
  {name: "Juneau", code: "JUNE", description: "", state_id: 5, population: nil, wiki_link: nil}
])
Country.create!([
  {name: "INDIA", code: "IN", description: "dcnwei", population: nil, literacy: nil, wiki_link: "", currency_type_id: 2, time_zone_id: 2},
  {name: "United States of America", code: "USA", description: "", population: nil, literacy: nil, wiki_link: "", currency_type_id: 1, time_zone_id: 1}
])
CurrencyType.create!([
  {name: "US Dollar", code: "USD", symbol: "$"},
  {name: "Ruppes", code: "INR", symbol: "₹"}
])
State.create!([
  {name: "Rajasthan", code: "RAJ", description: "", country_id: 1, population: nil, literacy: nil, wiki_link: nil},
  {name: "Tamil Naidu", code: "TN", description: "", country_id: 1, population: nil, literacy: nil, wiki_link: nil},
  {name: "Karnataka", code: "KAR", description: "", country_id: 1, population: nil, literacy: nil, wiki_link: nil},
  {name: "Alabama", code: "AL", description: "", country_id: 2, population: nil, literacy: nil, wiki_link: nil},
  {name: "Alaska", code: "AK", description: "", country_id: 2, population: nil, literacy: nil, wiki_link: nil},
  {name: "Arizona", code: "AZ", description: "", country_id: 2, population: nil, literacy: nil, wiki_link: nil}
])
TimeZone.create!([
  {name: "Pacific Daylight Time", code: "PST", offset: "UTC/GMT -7 hours"},
  {name: "Indian Standard Time", code: "IST", offset: "UTC/GMT +5:30 hours"}
])
