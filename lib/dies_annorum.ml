type celebration = {
  title: string;
  rank: Rank.t;
  season: Season.t;
  week: int;
}

type date_celebrations = {
  (* The office and date can be omitted as they should presumably be passed into any request to get a celebration. *)
  office: Office.t;
  date: CalendarLib.Date.t;
  (* The celebrations that could be celebrated on this day *)
  celebrations: celebration list;
}

(* Dates
 *
 * Below are the functions for calculating interesting dates in the calendar. *)
let christmas year =
  CalendarLib.Date.make year 12 25

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
let epiphany year =
  CalendarLib.Date.make year 1 6

let mary_mother_of_god year =
  CalendarLib.Date.make year 1 1

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

let easter year =
  CalendarLib.Date.easter year

let ash_wednesday year =
  CalendarLib.Date.rem (easter year) (CalendarLib.Date.Period.day 46)

let palm_sunday year =
  CalendarLib.Date.rem (easter year) (CalendarLib.Date.Period.day 7)

let holy_thursday year =
  CalendarLib.Date.rem (easter year) (CalendarLib.Date.Period.day 3)

let good_friday year =
  CalendarLib.Date.rem (easter year) (CalendarLib.Date.Period.day 2)

let holy_saturday year =
  CalendarLib.Date.rem (easter year) (CalendarLib.Date.Period.day 1)

let ascension year =
  CalendarLib.Date.add (easter year) (CalendarLib.Date.Period.day 40)

(* The ascension can be transferred to the 7th Sunday of Easter, which is 43 days after Easter. *)
let ascension_transferred year =
  CalendarLib.Date.add (easter year) (CalendarLib.Date.Period.day 43)

let pentecost year =
  CalendarLib.Date.add (easter year) (CalendarLib.Date.Period.day 49)

let mother_of_the_church year =
  CalendarLib.Date.add (pentecost year) (CalendarLib.Date.Period.day 1)

let holy_trinity year =
  CalendarLib.Date.add (pentecost year) (CalendarLib.Date.Period.day 7)

let corpus_christi year =
  CalendarLib.Date.add (holy_trinity year) (CalendarLib.Date.Period.day 4)

(* Corpus Christi can be transferred to the Sunday after Holy Trinity. *)
let corpus_christi_transferred year =
  CalendarLib.Date.add (holy_trinity year) (CalendarLib.Date.Period.day 7)

let sacred_heart year =
  CalendarLib.Date.add (pentecost year) (CalendarLib.Date.Period.day 19)

let immaculate_heart year =
  CalendarLib.Date.add (pentecost year) (CalendarLib.Date.Period.day 20)

let christ_the_king year =
  CalendarLib.Date.rem (first_sunday_of_advent year) (CalendarLib.Date.Period.day 7)

(* Helper functions. *)

(* Advent starts with first Vespers on the Saturday before the first Sunday of Advent. *)
let advent_start office year = match office with
  | Office.Completorium | Office.Vesperas -> CalendarLib.Date.rem (first_sunday_of_advent year) (CalendarLib.Date.Period.day 1)
  | _ -> first_sunday_of_advent year

(* Advent ends and Christmas starts with first Vespers on Christmas Eve. *)
let christmas_start office year = match office with
  | Office.Completorium | Office.Vesperas -> CalendarLib.Date.rem (christmas year) (CalendarLib.Date.Period.day 1)
  | _ -> christmas year

(* Lent ends and the Triduum starts with either Vespers on Holy Thursday or at the mass. *)
let tridduum_start office year = match office with
  | Office.Completorium | Office.Vesperas -> holy_thursday year
  | _ -> good_friday year

(* The Triduum ends on Vespers on Easter Sunday. *)
let triddum_end office year = match office with
  | Office.Completorium -> holy_saturday year
  | _ -> easter year

(* Easter ends with second Vespers on Pentecost. *)
let easter_end office year = match office with
  | Office.Completorium -> CalendarLib.Date.rem (pentecost year) (CalendarLib.Date.Period.day 1)
  | _ -> pentecost year

(* Season Calculations *)

let advent_feast date office =
  let year = CalendarLib.Date.year date in
  let advent_start = advent_start office year in
  if date < advent_start || date >= christmas_start office year then
    failwith "Called calculating advent feast outside of advent"
  else
    (* let week_of_advent = 1 + (CalendarLib.Date.Period.nb_days (CalendarLib.Date.sub date advent_start) / 7) in *)
    (* let rank, office_string = match CalendarLib.Date.day_of_week date, office with *)
    (* (* The Offices of the Sundays in Advent are Rank.Primary (1.2) in the liturgical table. *) *)
    (* | Sat, Office.Vesperas | Sat, Office.Completorium ->  *)
    (* | Sun, Office.Vesperas | Sun, Office.Completorium ->  *)
    (* | Sun, _ ->  *)
    (* | _ -> *)
    None


(* Endpoints *)

let get_celebrations office date language region =
  let year = CalendarLib.Date.year date in
  (* The Advent Season.
   *
   * According to General Norms for the Liturgical Year and the Calendar
   *
   * Advent begins with Vespers I of the Sunday falling on or closest to 30 November and
   * ends before evening prayer I of Christmas.
   *
   * Therefore Christmas always has Vespers I even on a Monday, even though Sundays of Advent are
   * of the same rank. *)
  if date >= advent_start office year && date < christmas_start office year then
    advent_feast date office
  (*
   *  The Christmas Season.
   *
   * This season begins on Vespers I of Christmas and goes to the Sunday after the Epiphany
   * (if it isn't transferred to Sunday) which is the feast of the Baptism of our Lord. *)
  else if date >= christmas_start office year || date <= baptism_of_our_lord year then
    None
  (*
   * Ordinary time between Christmas and Lent.
   *
   * This season Starts the day after the Baptism of our Lord and goes till Ash Wednesday.
   * The first week of Ordinary time starts on Monday after the Baptism of our Lord (assuming
   * the Epiphany hasn't been transferred). *)
  else if date > baptism_of_our_lord year && date < ash_wednesday year then
    None
  (* The Season of Lent.
   *
   * Lent goes from ash wednesday to the start of the triduum which is Holy Thursday Vespers. *)
  else if date >= ash_wednesday year && date < tridduum_start office year then
    None
  (* The Triduum Season.
   *
   * The Triduum starts on Holy Thursday Vespers and goes till Vespers on Easter Sunday. *)
  else if date >= tridduum_start office year && date <= triddum_end office year then
    None
  (* The Easter Season.
   *
   * It starts after Easter Sunday Vespers till Vespers II on Pentecost. *)
  else if date > triddum_end office year && date <= easter_end office year then
    None
  (* Ordinary Time after Easter.
   *
   * Goes from Pentecost after Vespers II till the First Sunday of Advent. *)
  else
    None
