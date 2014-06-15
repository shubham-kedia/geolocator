Country.create!([
  {name: "INDIA", code: "IN", description: "dcnwei", population: 9.0, literacy: 70.0, wiki_link: "http://en.wikipedia.org/wiki/India", currency_type_id: 2, time_zone_id: 2, area: nil},
  {name: "United States of America", code: "USA", description: "", population: 9.0, literacy: 80.0, wiki_link: "http://en.wikipedia.org/wiki/United_States", currency_type_id: 1, time_zone_id: 1, area: nil}
])
State.create!([
  {name: "Rajasthan", code: "RAJ", description: "", country_id: 1, population: 3.0, literacy: 65.0, wiki_link: "http://en.wikipedia.org/wiki/Rajasthan", area: nil},
  {name: "Tamil Naidu", code: "TN", description: "", country_id: 1, population: 3.0, literacy: 90.0, wiki_link: "http://en.wikipedia.org/wiki/Tamil_Nadu", area: nil},
  {name: "Karnataka", code: "KAR", description: "", country_id: 1, population: 3.0, literacy: 90.0, wiki_link: "http://en.wikipedia.org/wiki/Karnataka", area: nil},
  {name: "Alabama", code: "AL", description: "", country_id: 2, population: 3.0, literacy: 90.0, wiki_link: "http://en.wikipedia.org/wiki/Alabama", area: nil},
  {name: "Alaska", code: "AK", description: "", country_id: 2, population: 3.0, literacy: 65.0, wiki_link: "http://en.wikipedia.org/wiki/Alaska", area: nil},
  {name: "Arizona", code: "AZ", description: "", country_id: 2, population: 3.0, literacy: 65.0, wiki_link: "http://en.wikipedia.org/wiki/Arizona", area: nil}
])
City.create!([
  {name: "Jodhpur", code: "JU", description: "", state_id: 1, population: 1.0, wiki_link: "http://en.wikipedia.org/wiki/Main_Page", area: 2},
  {name: "Jaipur", code: "JP", description: "", state_id: 1, population: 1.0, wiki_link: "http://en.wikipedia.org/wiki/Main_Page", area: 1},
  {name: "Bikaner", code: "BKN", description: "", state_id: 1, population: 1.0, wiki_link: "http://en.wikipedia.org/wiki/Main_Page", area: 1},
  {name: "Chennai", code: "CHN", description: "", state_id: 2, population: 1.0, wiki_link: "http://en.wikipedia.org/wiki/Main_Page", area: 2},
  {name: "Erode", code: "ERD", description: "", state_id: 2, population: 1.0, wiki_link: "http://en.wikipedia.org/wiki/Main_Page", area: 1},
  {name: "Coimbatore", code: "COMB", description: "", state_id: 2, population: 1.0, wiki_link: "http://en.wikipedia.org/wiki/Main_Page", area: 2},
  {name: "Bangalore", code: "BAN", description: "", state_id: 3, population: 1.0, wiki_link: "http://en.wikipedia.org/wiki/Main_Page", area: 4},
  {name: "Kolar", code: "KOL", description: "", state_id: 3, population: 1.0, wiki_link: "http://en.wikipedia.org/wiki/Main_Page", area: 4},
  {name: "Haveri", code: "HAV", description: "", state_id: 3, population: 1.0, wiki_link: "http://en.wikipedia.org/wiki/Main_Page", area: 3},
  {name: "Buckeye", code: "BUCK", description: "", state_id: 6, population: 1.0, wiki_link: "http://en.wikipedia.org/wiki/Main_Page", area: 2},
  {name: "Camp Verde", code: "CMPV", description: "", state_id: 6, population: 1.0, wiki_link: "http://en.wikipedia.org/wiki/Main_Page", area: 3},
  {name: "Carefree", code: "CAF", description: "", state_id: 6, population: 1.0, wiki_link: "http://en.wikipedia.org/wiki/Main_Page", area: 3},
  {name: "Birmingham-Hoover", code: "BIH", description: "", state_id: 4, population: 1.0, wiki_link: "http://en.wikipedia.org/wiki/Main_Page", area: 1},
  {name: "Huntsville", code: "HUN", description: "", state_id: 4, population: 1.0, wiki_link: "http://en.wikipedia.org/wiki/Main_Page", area: 2},
  {name: "Montgomery", code: "MON", description: "", state_id: 4, population: 1.0, wiki_link: "http://en.wikipedia.org/wiki/Main_Page", area: 3},
  {name: "Anchorage", code: "ANC", description: "", state_id: 5, population: 1.0, wiki_link: "http://en.wikipedia.org/wiki/Main_Page", area: 4},
  {name: "Fairbanks", code: "FAIR", description: "", state_id: 5, population: 1.0, wiki_link: "http://en.wikipedia.org/wiki/Main_Page", area: 2},
  {name: "Juneau", code: "JUNE", description: "", state_id: 5, population: 1.0, wiki_link: "http://en.wikipedia.org/wiki/Main_Page", area: 2}
])
CurrencyType.create!([
  {name: "US Dollar", code: "USD", symbol: "$"},
  {name: "Ruppes", code: "INR", symbol: "₹"}
])
TimeZone.create!([
  {name: "Pacific Daylight Time", code: "PST", offset: "UTC/GMT -7 hours"},
  {name: "Indian Standard Time", code: "IST", offset: "UTC/GMT +5:30 hours"}
])
