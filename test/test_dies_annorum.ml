let test condition message =
  Alcotest.(check bool) message true condition

let dates_equal message date1 date2 =
  Alcotest.(check bool) (message ^ " " ^ (CalendarLib.Printer.Date.to_string date1) ^ " != " ^ (CalendarLib.Printer.Date.to_string date2)) true ((date1 = date2))

let date = CalendarLib.Date.make

let easter year = Dies_annorum.easter year

let test_easter_dates() =
  dates_equal "Easter 2020:" (easter 2020) (date 2020 4 12);
  dates_equal "Easter 2021:" (easter 2021) (date 2021 4 4);
  dates_equal "Easter 2022:" (easter 2022) (date 2022 4 17);
  dates_equal "Easter 2023:" (easter 2023) (date 2023 4 9);
  dates_equal "Easter 2024:" (easter 2024) (date 2024 3 31);
  dates_equal "Easter 2025:" (easter 2025) (date 2025 4 20);
  dates_equal "Easter 2026:" (easter 2026) (date 2026 4 5);
  dates_equal "Easter 2027:" (easter 2027) (date 2027 3 28);
  dates_equal "Easter 2028:" (easter 2028) (date 2028 4 16);
  dates_equal "Easter 2029:" (easter 2029) (date 2029 4 1);
  dates_equal "Easter 2030:" (easter 2030) (date 2030 4 21);
  dates_equal "Easter 2031:" (easter 2031) (date 2031 4 13);
  dates_equal "Easter 2032:" (easter 2032) (date 2032 3 28);
  dates_equal "Easter 2033:" (easter 2033) (date 2033 4 17);
  dates_equal "Easter 2034:" (easter 2034) (date 2034 4 9);
  dates_equal "Easter 2035:" (easter 2035) (date 2035 3 25);
  dates_equal "Easter 2036:" (easter 2036) (date 2036 4 13);
  dates_equal "Easter 2037:" (easter 2037) (date 2037 4 5);
  dates_equal "Easter 2038:" (easter 2038) (date 2038 4 25);
  dates_equal "Easter 2039:" (easter 2039) (date 2039 4 10);
  dates_equal "Easter 2040:" (easter 2040) (date 2040 4 1);
  ()

let _ = Alcotest.run "Test Suite" [
  "Dates", [
    Alcotest.test_case "Easter date for years" `Quick test_easter_dates;
  ];
]
