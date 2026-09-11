(** {0 Module Dies_annorum}

    This module is the public interface of the project
  *)

type celebration =
  { office : Office.t;
    first_or_second : Office.first_or_second;
    title : string;
    rank : Rank.t;
    season : Season.t;
    week : int;
    color : Color.t }

(* Advent starts with first Vespers on the Saturday before the first Sunday of Advent. *)
let advent_start office year =
  match office with
  | Office.Completorium | Office.Vesperas ->
      CalendarLib.Date.rem (Dates.first_sunday_of_advent year) (CalendarLib.Date.Period.day 1)
  | _ -> Dates.first_sunday_of_advent year

(* Advent ends and Christmas starts with first Vespers on Christmas Eve. *)
let christmas_start office year =
  match office with
  | Office.Completorium | Office.Vesperas -> CalendarLib.Date.rem (Dates.christmas year) (CalendarLib.Date.Period.day 1)
  | _ -> Dates.christmas year

(* Lent ends and the Triduum starts with either Vespers on Holy Thursday or at the mass. *)
let tridduum_start office year =
  match office with
  | Office.Completorium | Office.Vesperas -> Dates.holy_thursday year
  | _ -> Dates.good_friday year

(* The Triduum ends on Vespers on Easter Sunday. *)
let triddum_end office year =
  match office with
  | Office.Completorium -> Dates.holy_saturday year
  | _ -> Dates.easter year

(* Easter ends with second Vespers on Pentecost. *)
let easter_end office year =
  match office with
  | Office.Completorium -> CalendarLib.Date.rem (Dates.pentecost year) (CalendarLib.Date.Period.day 1)
  | _ -> Dates.pentecost year

(* Endpoints *)

(** [get_celebrations formatter region office date]
    *)
let get_celebrations (module L : Language.FMT) region office date =
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
    let season = Season.TempusAdventus in
    let color = Color.Violet in
    let advent_start = advent_start office year in
    let week = 1 + (CalendarLib.Date.Period.nb_days (CalendarLib.Date.sub date advent_start) / 7) in
    let rank, first_or_second =
      match (CalendarLib.Date.day_of_week date, office) with
      (* The Offices of the Sundays in Advent are Rank.Primary (1.2) in the liturgical table. *)
      | Sat, Office.Vesperas | Sat, Office.Completorium -> (Rank.Primary, Office.First)
      | Sun, Office.Vesperas | Sun, Office.Completorium -> (Rank.Primary, Office.Second)
      | Sun, _ -> (Rank.Primary, Office.Neither)
      (* All other days in Advent *)
      | _ -> (Rank.Primary, Office.Neither)
    in
    [{office; first_or_second; title = "placeholder"; rank; season; week; color}]
    (*
     *  The Christmas Season.
     *
     * This season begins on Vespers I of Christmas and goes to the Sunday after the Epiphany
     * (if it isn't transferred to Sunday) which is the feast of the Baptism of our Lord. *)
  else if date >= christmas_start office year || date <= Dates.baptism_of_our_lord year then
    [ { office = Office.Vesperas;
        first_or_second = Office.Neither;
        title = "placeholder";
        rank = Rank.SolemnityGeneral;
        season = Season.TempusPerAnnum;
        week = 1;
        color = Color.Violet } ]
    (*
     * Ordinary time between Christmas and Lent.
     *
     * This season Starts the day after the Baptism of our Lord and goes till Ash Wednesday.
     * The first week of Ordinary time starts on Monday after the Baptism of our Lord (assuming
     * the Epiphany hasn't been transferred). *)
  else if date > Dates.baptism_of_our_lord year && date < Dates.ash_wednesday year then
    [ { office = Office.Vesperas;
        first_or_second = Office.Neither;
        title = "placeholder";
        rank = Rank.SolemnityGeneral;
        season = Season.TempusPerAnnum;
        week = 1;
        color = Color.Violet } ]
    (* The Season of Lent.
     *
     * Lent goes from ash wednesday to the start of the triduum which is Holy Thursday Vespers. *)
  else if date >= Dates.ash_wednesday year && date < tridduum_start office year then
    [ { office = Office.Vesperas;
        first_or_second = Office.Neither;
        title = "placeholder";
        rank = Rank.SolemnityGeneral;
        season = Season.TempusPerAnnum;
        week = 1;
        color = Color.Violet } ]
    (* The Triduum Season.
     *
     * The Triduum starts on Holy Thursday Vespers and goes till Vespers on Easter Sunday. *)
  else if date >= tridduum_start office year && date <= triddum_end office year then
    [ { office = Office.Vesperas;
        first_or_second = Office.Neither;
        title = "placeholder";
        rank = Rank.SolemnityGeneral;
        season = Season.TempusPerAnnum;
        week = 1;
        color = Color.Violet } ]
    (* The Easter Season.
     *
     * It starts after Easter Sunday Vespers till Vespers II on Pentecost. *)
  else if date > triddum_end office year && date <= easter_end office year then
    [ { office = Office.Vesperas;
        first_or_second = Office.Neither;
        title = "placeholder";
        rank = Rank.SolemnityGeneral;
        season = Season.TempusPerAnnum;
        week = 1;
        color = Color.Violet } ]
  (* Ordinary Time after Easter.
   *
   * Goes from Pentecost after Vespers II till the First Sunday of Advent. *)
    else
    [ { office = Office.Vesperas;
        first_or_second = Office.Neither;
        title = "placeholder";
        rank = Rank.SolemnityGeneral;
        season = Season.TempusPerAnnum;
        week = 1;
        color = Color.Violet } ]
