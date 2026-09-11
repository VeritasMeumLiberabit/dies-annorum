(* This tests the date calculations are correct for a range of years.
 *
 * I tested the dates for Advent/Christmas feasts because they are non trivial to calculate.
 *
 * All the dates of feasts relative to Easter are pretty straight forward to calculate, so I omitted testing those.
 *)
let dates_equal message date1 date2 =
  Alcotest.(check bool)
    (message ^ " " ^ CalendarLib.Printer.Date.to_string date1 ^ " != " ^ CalendarLib.Printer.Date.to_string date2)
    true (date1 = date2)

let date_options_equal message date1 date2 =
  let date1_string =
    match date1 with
    | Some d -> "Some " ^ CalendarLib.Printer.Date.to_string d
    | None -> "None"
  in
  let date2_string =
    match date2 with
    | Some d -> "Some " ^ CalendarLib.Printer.Date.to_string d
    | None -> "None"
  in
  Alcotest.(check bool) (message ^ " " ^ date1_string ^ " != " ^ date2_string) true (date1 = date2)

let date = CalendarLib.Date.make

let first_sunday_of_advent = Dies_annorum.Dates.first_sunday_of_advent

let test_first_sunday_of_advent_dates () =
  (* Should cover all the cases for the exact date when the first Sunday of Advent lands *)
  dates_equal "First Sunday of Advent 2025:" (first_sunday_of_advent 2025) (date 2025 11 30) ;
  dates_equal "First Sunday of Advent 2026:" (first_sunday_of_advent 2026) (date 2026 11 29) ;
  dates_equal "First Sunday of Advent 2027:" (first_sunday_of_advent 2027) (date 2027 11 28) ;
  dates_equal "First Sunday of Advent 2028:" (first_sunday_of_advent 2028) (date 2028 12 3) ;
  dates_equal "First Sunday of Advent 2029:" (first_sunday_of_advent 2029) (date 2029 12 2) ;
  dates_equal "First Sunday of Advent 2030:" (first_sunday_of_advent 2030) (date 2030 12 1) ;
  dates_equal "First Sunday of Advent 2031:" (first_sunday_of_advent 2031) (date 2031 11 30) ;
  dates_equal "First Sunday of Advent 2032:" (first_sunday_of_advent 2032) (date 2032 11 28) ;
  dates_equal "First Sunday of Advent 2033:" (first_sunday_of_advent 2033) (date 2033 11 27) ;
  dates_equal "First Sunday of Advent 2034:" (first_sunday_of_advent 2034) (date 2034 12 3) ;
  dates_equal "First Sunday of Advent 2035:" (first_sunday_of_advent 2035) (date 2035 12 2) ;
  dates_equal "First Sunday of Advent 2036:" (first_sunday_of_advent 2036) (date 2036 11 30) ;
  ()

let holy_family = Dies_annorum.Dates.holy_family

let test_holy_family_dates () =
  (* Covers when Christmas is on all the days of the week. *)
  dates_equal "Holy Family 2020:" (holy_family 2020) (date 2020 12 27) ;
  dates_equal "Holy Family 2021:" (holy_family 2021) (date 2021 12 26) ;
  dates_equal "Holy Family 2022:" (holy_family 2022) (date 2022 12 30) ;
  dates_equal "Holy Family 2023:" (holy_family 2023) (date 2023 12 31) ;
  dates_equal "Holy Family 2024:" (holy_family 2024) (date 2024 12 29) ;
  dates_equal "Holy Family 2025:" (holy_family 2025) (date 2025 12 28) ;
  dates_equal "Holy Family 2026:" (holy_family 2026) (date 2026 12 27) ;
  dates_equal "Holy Family 2027:" (holy_family 2027) (date 2027 12 26) ;
  dates_equal "Holy Family 2028:" (holy_family 2028) (date 2028 12 31) ;
  dates_equal "Holy Family 2029:" (holy_family 2029) (date 2029 12 30) ;
  dates_equal "Holy Family 2030:" (holy_family 2030) (date 2030 12 29) ;
  dates_equal "Holy Family 2031:" (holy_family 2031) (date 2031 12 28) ;
  dates_equal "Holy Family 2032:" (holy_family 2032) (date 2032 12 26) ;
  dates_equal "Holy Family 2033:" (holy_family 2033) (date 2033 12 30) ;
  dates_equal "Holy Family 2034:" (holy_family 2034) (date 2034 12 31) ;
  dates_equal "Holy Family 2035:" (holy_family 2035) (date 2035 12 30) ;
  dates_equal "Holy Family 2036:" (holy_family 2036) (date 2036 12 28) ;
  dates_equal "Holy Family 2037:" (holy_family 2037) (date 2037 12 27) ;
  dates_equal "Holy Family 2038:" (holy_family 2038) (date 2038 12 26) ;
  dates_equal "Holy Family 2039:" (holy_family 2039) (date 2039 12 30) ;
  dates_equal "Holy Family 2040:" (holy_family 2040) (date 2040 12 30) ;
  ()

let second_sunday_of_christmas = Dies_annorum.Dates.second_sunday_of_christmas

let test_second_sunday_of_christmas_dates () =
  (* Covers when Christmas is on all the days of the week. *)
  date_options_equal "Second Sunday of Christmas 2025:" (second_sunday_of_christmas 2025) (Some (date 2025 1 5)) ;
  date_options_equal "Second Sunday of Christmas 2026:" (second_sunday_of_christmas 2026) (Some (date 2026 1 4)) ;
  date_options_equal "Second Sunday of Christmas 2027:" (second_sunday_of_christmas 2027) (Some (date 2027 1 3)) ;
  date_options_equal "Second Sunday of Christmas 2028:" (second_sunday_of_christmas 2028) (Some (date 2028 1 2)) ;
  date_options_equal "Second Sunday of Christmas 2029:" (second_sunday_of_christmas 2029) None ;
  date_options_equal "Second Sunday of Christmas 2030:" (second_sunday_of_christmas 2030) None ;
  date_options_equal "Second Sunday of Christmas 2031:" (second_sunday_of_christmas 2031) (Some (date 2031 1 5)) ;
  date_options_equal "Second Sunday of Christmas 2032:" (second_sunday_of_christmas 2032) (Some (date 2032 1 4)) ;
  date_options_equal "Second Sunday of Christmas 2033:" (second_sunday_of_christmas 2033) (Some (date 2033 1 2)) ;
  date_options_equal "Second Sunday of Christmas 2034:" (second_sunday_of_christmas 2034) None ;
  date_options_equal "Second Sunday of Christmas 2035:" (second_sunday_of_christmas 2035) None ;
  date_options_equal "Second Sunday of Christmas 2036:" (second_sunday_of_christmas 2036) None ;
  date_options_equal "Second Sunday of Christmas 2037:" (second_sunday_of_christmas 2037) (Some (date 2037 1 4)) ;
  date_options_equal "Second Sunday of Christmas 2038:" (second_sunday_of_christmas 2038) (Some (date 2038 1 3)) ;
  date_options_equal "Second Sunday of Christmas 2039:" (second_sunday_of_christmas 2039) (Some (date 2039 1 2)) ;
  date_options_equal "Second Sunday of Christmas 2040:" (second_sunday_of_christmas 2040) None ;
  ()

let epiphany_sunday = Dies_annorum.Dates.epiphany_sunday

let test_epiphany_sunday () =
  (* Covers when Christmas is on all the days of the week. *)
  dates_equal "Epiphany Sunday 2025:" (epiphany_sunday 2025) (date 2025 1 5) ;
  dates_equal "Epiphany Sunday 2026:" (epiphany_sunday 2026) (date 2026 1 4) ;
  dates_equal "Epiphany Sunday 2027:" (epiphany_sunday 2027) (date 2027 1 3) ;
  dates_equal "Epiphany Sunday 2028:" (epiphany_sunday 2028) (date 2028 1 2) ;
  dates_equal "Epiphany Sunday 2029:" (epiphany_sunday 2029) (date 2029 1 7) ;
  dates_equal "Epiphany Sunday 2030:" (epiphany_sunday 2030) (date 2030 1 6) ;
  dates_equal "Epiphany Sunday 2031:" (epiphany_sunday 2031) (date 2031 1 5) ;
  dates_equal "Epiphany Sunday 2032:" (epiphany_sunday 2032) (date 2032 1 4) ;
  dates_equal "Epiphany Sunday 2033:" (epiphany_sunday 2033) (date 2033 1 2) ;
  dates_equal "Epiphany Sunday 2034:" (epiphany_sunday 2034) (date 2034 1 8) ;
  dates_equal "Epiphany Sunday 2035:" (epiphany_sunday 2035) (date 2035 1 7) ;
  dates_equal "Epiphany Sunday 2036:" (epiphany_sunday 2036) (date 2036 1 6) ;
  dates_equal "Epiphany Sunday 2037:" (epiphany_sunday 2037) (date 2037 1 4) ;
  dates_equal "Epiphany Sunday 2038:" (epiphany_sunday 2038) (date 2038 1 3) ;
  dates_equal "Epiphany Sunday 2039:" (epiphany_sunday 2039) (date 2039 1 2) ;
  dates_equal "Epiphany Sunday 2040:" (epiphany_sunday 2040) (date 2040 1 8) ;
  ()

let baptism = Dies_annorum.Dates.baptism_of_our_lord

let test_baptism () =
  (* Covers when Christmas is on all the days of the week. *)
  dates_equal "Baptism of the Lord 2025:" (baptism 2025) (date 2025 1 12) ;
  dates_equal "Baptism of the Lord 2026:" (baptism 2026) (date 2026 1 11) ;
  dates_equal "Baptism of the Lord 2027:" (baptism 2027) (date 2027 1 10) ;
  dates_equal "Baptism of the Lord 2028:" (baptism 2028) (date 2028 1 9) ;
  dates_equal "Baptism of the Lord 2029:" (baptism 2029) (date 2029 1 7) ;
  dates_equal "Baptism of the Lord 2030:" (baptism 2030) (date 2030 1 13) ;
  dates_equal "Baptism of the Lord 2031:" (baptism 2031) (date 2031 1 12) ;
  dates_equal "Baptism of the Lord 2032:" (baptism 2032) (date 2032 1 11) ;
  dates_equal "Baptism of the Lord 2033:" (baptism 2033) (date 2033 1 9) ;
  dates_equal "Baptism of the Lord 2034:" (baptism 2034) (date 2034 1 8) ;
  dates_equal "Baptism of the Lord 2035:" (baptism 2035) (date 2035 1 7) ;
  dates_equal "Baptism of the Lord 2036:" (baptism 2036) (date 2036 1 13) ;
  dates_equal "Baptism of the Lord 2037:" (baptism 2037) (date 2037 1 11) ;
  dates_equal "Baptism of the Lord 2038:" (baptism 2038) (date 2038 1 10) ;
  dates_equal "Baptism of the Lord 2039:" (baptism 2039) (date 2039 1 9) ;
  dates_equal "Baptism of the Lord 2040:" (baptism 2040) (date 2040 1 8) ;
  ()

let baptism_displaced = Dies_annorum.Dates.baptism_of_our_lord_transferred

let test_baptism_displaced () =
  (* Covers when Christmas is on all the days of the week. *)
  dates_equal "Baptism of the Lord 2025:" (baptism_displaced 2025) (date 2025 1 12) ;
  dates_equal "Baptism of the Lord 2026:" (baptism_displaced 2026) (date 2026 1 11) ;
  dates_equal "Baptism of the Lord 2027:" (baptism_displaced 2027) (date 2027 1 10) ;
  dates_equal "Baptism of the Lord 2028:" (baptism_displaced 2028) (date 2028 1 9) ;
  dates_equal "Baptism of the Lord 2029:" (baptism_displaced 2029) (date 2029 1 8) ;
  dates_equal "Baptism of the Lord 2030:" (baptism_displaced 2030) (date 2030 1 13) ;
  dates_equal "Baptism of the Lord 2031:" (baptism_displaced 2031) (date 2031 1 12) ;
  dates_equal "Baptism of the Lord 2032:" (baptism_displaced 2032) (date 2032 1 11) ;
  dates_equal "Baptism of the Lord 2033:" (baptism_displaced 2033) (date 2033 1 9) ;
  dates_equal "Baptism of the Lord 2034:" (baptism_displaced 2034) (date 2034 1 9) ;
  dates_equal "Baptism of the Lord 2035:" (baptism_displaced 2035) (date 2035 1 8) ;
  dates_equal "Baptism of the Lord 2036:" (baptism_displaced 2036) (date 2036 1 13) ;
  dates_equal "Baptism of the Lord 2037:" (baptism_displaced 2037) (date 2037 1 11) ;
  dates_equal "Baptism of the Lord 2038:" (baptism_displaced 2038) (date 2038 1 10) ;
  dates_equal "Baptism of the Lord 2039:" (baptism_displaced 2039) (date 2039 1 9) ;
  dates_equal "Baptism of the Lord 2040:" (baptism_displaced 2040) (date 2040 1 9) ;
  ()

let easter = Dies_annorum.Dates.easter

let test_easter_dates () =
  dates_equal "Easter 2020:" (easter 2020) (date 2020 4 12) ;
  dates_equal "Easter 2021:" (easter 2021) (date 2021 4 4) ;
  dates_equal "Easter 2022:" (easter 2022) (date 2022 4 17) ;
  dates_equal "Easter 2023:" (easter 2023) (date 2023 4 9) ;
  dates_equal "Easter 2024:" (easter 2024) (date 2024 3 31) ;
  dates_equal "Easter 2025:" (easter 2025) (date 2025 4 20) ;
  dates_equal "Easter 2026:" (easter 2026) (date 2026 4 5) ;
  dates_equal "Easter 2027:" (easter 2027) (date 2027 3 28) ;
  dates_equal "Easter 2028:" (easter 2028) (date 2028 4 16) ;
  dates_equal "Easter 2029:" (easter 2029) (date 2029 4 1) ;
  dates_equal "Easter 2030:" (easter 2030) (date 2030 4 21) ;
  dates_equal "Easter 2031:" (easter 2031) (date 2031 4 13) ;
  dates_equal "Easter 2032:" (easter 2032) (date 2032 3 28) ;
  dates_equal "Easter 2033:" (easter 2033) (date 2033 4 17) ;
  dates_equal "Easter 2034:" (easter 2034) (date 2034 4 9) ;
  dates_equal "Easter 2035:" (easter 2035) (date 2035 3 25) ;
  dates_equal "Easter 2036:" (easter 2036) (date 2036 4 13) ;
  dates_equal "Easter 2037:" (easter 2037) (date 2037 4 5) ;
  dates_equal "Easter 2038:" (easter 2038) (date 2038 4 25) ;
  dates_equal "Easter 2039:" (easter 2039) (date 2039 4 10) ;
  dates_equal "Easter 2040:" (easter 2040) (date 2040 4 1) ;
  ()

let date_tests =
  [ Alcotest.test_case "First Sunday of Advent date 2025 -> 2036" `Quick test_first_sunday_of_advent_dates;
    Alcotest.test_case "Holy Family date 2020 -> 2040" `Quick test_holy_family_dates;
    Alcotest.test_case "Second Sunday of Christmas date 2025 -> 2040" `Quick test_second_sunday_of_christmas_dates;
    Alcotest.test_case "Epiphany Sunday date 2025 -> 2040" `Quick test_epiphany_sunday;
    Alcotest.test_case "Baptism of the Lord date 2025 -> 2040" `Quick test_baptism;
    Alcotest.test_case "Baptism of the Lord displaced date 2025 -> 2040" `Quick test_baptism_displaced;
    Alcotest.test_case "Easter date 2020 -> 2040" `Quick test_easter_dates ]
