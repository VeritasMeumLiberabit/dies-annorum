(** The module interface for formatting various bits of text in a language. *)
module type Fmt = sig
  (** [color color] Converts a color to a its name for the language.

      @param color The color to convert
      @return The name of the color in that language *)
  val color : Color.t -> string

  (** [season_to_string season] Converts a season to its name for the language.

      @param season The season to convert
      @return The name of the season in that language *)
  val season : Season.t -> string

  (** [office_to_string ?kind office] Converts an office to a string for the language.

      @param kind Some feasts have first and second Vespers and Compline. When that is the case, you specify it here.
      @param office The office to convert.
      @return The office name in that language
      *)
  val office : ?kind:Office.first_or_second -> Office.t -> string

  (** [season_day_to_string season week day] Produces a string for the ferial

      @param season The season
      @param week The week that this season is in
      @param day The day of the week
      @return The *)
  val season_day_to_string : Season.t -> int -> CalendarLib.Date.day -> string
end

module EnglishFmt : Fmt = struct
  let color color =
    match color with
    | Color.Gold -> "Gold"
    | Color.Green -> "Green"
    | Color.Black -> "Black"
    | Color.Red -> "Red"
    | Color.White -> "White"
    | Color.Violet -> "Violet"
    | Color.Rose -> "Rose"

  let season season =
    match season with
    | Season.TempusAdventus -> "Advent"
    | Season.TempusNativitatis -> "Christmas"
    | Season.TempusPaschale -> "Easter"
    | Season.TempusQuadragesimae -> "Lent"
    | Season.TempusPerAnnum -> "Ordinary Time"
    | Season.TriddumPaschale -> "Paschal Tridduum"

  let office ?(kind = Office.Neither) office =
    match (office, kind) with
    (* Normal Offices *)
    | Office.OfficiumLectionis, _ -> "Office of Readings"
    | Office.LaudesMatutinas, _ -> "Lauds"
    | Office.Terciam, _ -> "Terce"
    | Office.Sextam, _ -> "Sext"
    | Office.Nonam, _ -> "None"
    (* Vespers and Compline can be prefixed with I or II depending on the feast *)
    | Office.Vesperas, Office.First -> "Vespers I"
    | Office.Vesperas, Office.Second -> "Vespers II"
    | Office.Vesperas, Office.Neither -> "Vespers"
    | Office.Completorium, Office.First -> "Compline I"
    | Office.Completorium, Office.Second -> "Compline II"
    | Office.Completorium, Office.Neither -> "Compline"

  let season_day_to_string season week day =
    match season with
    | Season.TempusAdventus -> "Advent"
    | Season.TempusNativitatis -> "Christmas"
    | Season.TempusPaschale -> "Easter"
    | Season.TempusQuadragesimae -> "Lent"
    | Season.TempusPerAnnum -> "Ordinary Time"
    | Season.TriddumPaschale -> "Paschal Tridduum"
end

module LatinFmt : Fmt = struct
  let color color = "TODO -- Complete"

  let season season =
    match season with
    | Season.TempusAdventus -> "Tempus Adventus"
    | Season.TempusNativitatis -> "Tempus Nativitatis"
    | Season.TempusPaschale -> "Tempus Paschale"
    | Season.TempusQuadragesimae -> "Tempus Quadregesimae"
    | Season.TempusPerAnnum -> "Tempus Per Annum"
    | Season.TriddumPaschale -> "Triddum Paschale"

  let office ?(kind = Office.Neither) office =
    match (office, kind) with
    (* Normal Offices *)
    | Office.OfficiumLectionis, _ -> "Add Officium Lectionis"
    | Office.LaudesMatutinas, _ -> "Ad Laudes Matutinas"
    | Office.Terciam, _ -> "Ad Terciam"
    | Office.Sextam, _ -> "Ad Sextam"
    | Office.Nonam, _ -> "Ad Nonam"
    (* Vespers and Compline can be prefixed with I or II depending on the feast *)
    | Office.Vesperas, First -> "Ad I Vesperas"
    | Office.Vesperas, Second -> "Ad II Vesperas"
    | Office.Vesperas, Neither -> "Ad Vesperas"
    | Office.Completorium, First -> "Ad I Completorium "
    | Office.Completorium, Second -> "Ad II Completorium"
    | Office.Completorium, Neither -> "Completorium"

  let season_day_to_string season week day = "TODO -- Complete"
end
