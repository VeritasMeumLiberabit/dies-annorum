let christmas year = CalendarLib.Date.make year 12 25

let first_sunday_of_advent year =
  let christmas = christmas year in
  let christmas_weekday = CalendarLib.Date.day_of_week christmas in
  let christmas_weekday_number = CalendarLib.Date.int_of_day christmas_weekday in
  let advent_length = CalendarLib.Date.Period.day (7 + 7 + 7 + christmas_weekday_number) in
  CalendarLib.Date.rem christmas advent_length

let holy_family year =
  match CalendarLib.Date.day_of_week (christmas year) with
  (* If Christmas is on a Sunday the feast is moved to Friday *)
  | Sun -> CalendarLib.Date.make year 12 30
  (* Otherwise it is on the following Sunday *)
  | Mon -> CalendarLib.Date.make year 12 31
  | Tue -> CalendarLib.Date.make year 12 30
  | Wed -> CalendarLib.Date.make year 12 29
  | Thu -> CalendarLib.Date.make year 12 28
  | Fri -> CalendarLib.Date.make year 12 27
  | Sat -> CalendarLib.Date.make year 12 26

(* The date of the Epiphany if it isn't transferred. *)
let epiphany year = CalendarLib.Date.make year 1 6

let mary_mother_of_god year = CalendarLib.Date.make year 1 1

(* The calendar allows for the Epiphany to be transferred to the Sunday between 2nd and 8th of January inclusive. *)
let epiphany_sunday year =
  match CalendarLib.Date.day_of_week (mary_mother_of_god year) with
  | Sun -> CalendarLib.Date.make year 1 8
  | Mon -> CalendarLib.Date.make year 1 7
  | Tue -> CalendarLib.Date.make year 1 6
  | Wed -> CalendarLib.Date.make year 1 5
  | Thu -> CalendarLib.Date.make year 1 4
  | Fri -> CalendarLib.Date.make year 1 3
  | Sat -> CalendarLib.Date.make year 1 2

(* When the Epiphany isn't transferred to Sunday, the second Sunday of Christmas occurs between the 2nd and 5th of the month. This means that sometimes there isn't a second Sunday of Christmas when the Epiphany isn't transferred. *)
let second_sunday_of_christmas year =
  match CalendarLib.Date.day_of_week (mary_mother_of_god year) with
  | Sun -> None
  | Mon -> None
  | Tue -> None
  | Wed -> Some (CalendarLib.Date.make year 1 5)
  | Thu -> Some (CalendarLib.Date.make year 1 4)
  | Fri -> Some (CalendarLib.Date.make year 1 3)
  | Sat -> Some (CalendarLib.Date.make year 1 2)

(* When the Epiphany isn't transferred to Sunday, the Baptism of our Lord is on the following Sunday. *)
let baptism_of_our_lord year =
  match CalendarLib.Date.day_of_week (epiphany year) with
  | Sun -> CalendarLib.Date.make year 1 13
  | Mon -> CalendarLib.Date.make year 1 12
  | Tue -> CalendarLib.Date.make year 1 11
  | Wed -> CalendarLib.Date.make year 1 10
  | Thu -> CalendarLib.Date.make year 1 9
  | Fri -> CalendarLib.Date.make year 1 8
  | Sat -> CalendarLib.Date.make year 1 7

(* When the Epiphany is transferred to Sunday, the Baptism of our Lord is on the following Sunday unless the epiphany is the 7th or 8th. In that case the feast gets moved to Monday. *)
let baptism_of_our_lord_transferred year =
  match CalendarLib.Date.day_of_month (epiphany_sunday year) with
  | 7 -> CalendarLib.Date.make year 1 8
  | 8 -> CalendarLib.Date.make year 1 9
  | _ -> CalendarLib.Date.add (epiphany_sunday year) (CalendarLib.Date.Period.day 7)

let easter year = CalendarLib.Date.easter year

let ash_wednesday year = CalendarLib.Date.rem (easter year) (CalendarLib.Date.Period.day 46)

let palm_sunday year = CalendarLib.Date.rem (easter year) (CalendarLib.Date.Period.day 7)

let holy_thursday year = CalendarLib.Date.rem (easter year) (CalendarLib.Date.Period.day 3)

let good_friday year = CalendarLib.Date.rem (easter year) (CalendarLib.Date.Period.day 2)

let holy_saturday year = CalendarLib.Date.rem (easter year) (CalendarLib.Date.Period.day 1)

let ascension year = CalendarLib.Date.add (easter year) (CalendarLib.Date.Period.day 40)

(* The ascension can be transferred to the 7th Sunday of Easter, which is 43 days after Easter. *)
let ascension_transferred year = CalendarLib.Date.add (easter year) (CalendarLib.Date.Period.day 43)

let pentecost year = CalendarLib.Date.add (easter year) (CalendarLib.Date.Period.day 49)

(* TODO -- Document that this may be superseded by other feasts *)
let mother_of_the_church year = CalendarLib.Date.add (pentecost year) (CalendarLib.Date.Period.day 1)

let holy_trinity year = CalendarLib.Date.add (pentecost year) (CalendarLib.Date.Period.day 7)

(* TODO -- Document that this may be moved when conflicting with other feasts *)
let corpus_christi year = CalendarLib.Date.add (holy_trinity year) (CalendarLib.Date.Period.day 4)

(* Corpus Christi can be transferred to the Sunday after Holy Trinity. *)
(* TODO -- Document that this may be moved when conflicting with other feasts *)
let corpus_christi_transferred year = CalendarLib.Date.add (holy_trinity year) (CalendarLib.Date.Period.day 7)

(* TODO -- Document that this may be moved when conflicting with other feasts *)
let sacred_heart year = CalendarLib.Date.add (pentecost year) (CalendarLib.Date.Period.day 19)

(* TODO -- Document that this may be superseded by other feasts *)
let immaculate_heart year = CalendarLib.Date.add (pentecost year) (CalendarLib.Date.Period.day 20)

let christ_the_king year = CalendarLib.Date.rem (first_sunday_of_advent year) (CalendarLib.Date.Period.day 7)
