module type Language = sig
  val color_to_string : Color.t -> string

  val season_to_string : Season.t -> string

  val office_to_string : ?kind:Office.kind -> Office.t -> string
end

module English : Language = struct
  let color_to_string color =
    match color with
    | Color.Gold -> "Gold"
    | Color.Green -> "Green"
    | Color.Black -> "Black"
    | Color.Red -> "Red"
    | Color.White -> "White"
    | Color.Violet -> "Violet"
    | Color.Rose -> "Rose"

  let season_to_string season =
    match season with
    | Season.TempusAdventus -> "Advent"
    | Season.TempusNativitatis -> "Christmas"
    | Season.TempusPaschale -> "Easter"
    | Season.TempusQuadragesimae -> "Lent"
    | Season.TempusPerAnnum -> "Ordinary Time"
    | Season.TriddumPaschale -> "Paschal Tridduum"

  let office_to_string ?(kind = Office.Ordinary) office =
    match (office, kind) with
    (* Normal Offices *)
    | Office.OfficiumLectionis, _ -> "Office of Readings"
    | Office.LaudesMatutinas, _ -> "Lauds"
    | Office.Terciam, _ -> "Terce"
    | Office.Sextam, _ -> "Sext"
    | Office.Nonam, _ -> "None"
    (* Vespers and Compline can be prefixed with I or II depending on *)
    | Office.Vesperas, First -> "Vespers I"
    | Office.Vesperas, Second -> "Vespers II"
    | Office.Vesperas, Ordinary -> "Vespers"
    | Office.Completorium, First -> "Compline I"
    | Office.Completorium, Second -> "Compline II"
    | Office.Completorium, Ordinary -> "Compline"
end
