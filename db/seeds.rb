City.create!([
  {name: "Jodhpur", code: "JU", description: "", state_id: 1},
  {name: "Jaipur", code: "JP", description: "", state_id: 1},
  {name: "Bikaner", code: "BKN", description: "", state_id: 1},
  {name: "Chennai", code: "CHN", description: "", state_id: 2},
  {name: "Erode", code: "ERD", description: "", state_id: 2},
  {name: "Coimbatore", code: "COMB", description: "", state_id: 2},
  {name: "Bangalore", code: "BAN", description: "", state_id: 3},
  {name: "Kolar", code: "KOL", description: "", state_id: 3},
  {name: "Haveri", code: "HAV", description: "", state_id: 3},
  {name: "Buckeye", code: "BUCK", description: "", state_id: 6},
  {name: "Camp Verde", code: "CMPV", description: "", state_id: 6},
  {name: "Carefree", code: "CAF", description: "", state_id: 6},
  {name: "Birmingham-Hoover", code: "BIH", description: "", state_id: 4},
  {name: "Huntsville", code: "HUN", description: "", state_id: 4},
  {name: "Montgomery", code: "MON", description: "", state_id: 4},
  {name: "Anchorage", code: "ANC", description: "", state_id: 5},
  {name: "Fairbanks", code: "FAIR", description: "", state_id: 5},
  {name: "Juneau", code: "JUNE", description: "", state_id: 5}
])
Country.create!([
  {name: "INDIA", code: "IN", description: "dcnwei"},
  {name: "United States of America", code: "USA", description: ""}
])
State.create!([
  {name: "Rajasthan", code: "RAJ", description: "", country_id: 1},
  {name: "Tamil Naidu", code: "TN", description: "", country_id: 1},
  {name: "Karnataka", code: "KAR", description: "", country_id: 1},
  {name: "Alabama", code: "AL", description: "", country_id: 2},
  {name: "Alaska", code: "AK", description: "", country_id: 2},
  {name: "Arizona", code: "AZ", description: "", country_id: 2}
])
