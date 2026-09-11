open Office

let office_to_str ?(kind = Ordinary) office =
  match (office, kind) with
  (* Normal Offices *)
  | OfficiumLectionis, _ -> "Add Officium Lectionis"
  | LaudesMatutinas, _ -> "Ad Laudes Matutinas"
  | Terciam, _ -> "Ad Terciam"
  | Sextam, _ -> "Ad Sextam"
  | Nonam, _ -> "Ad Nonam"
  (* Vespers and Compline can be prefixed with I or II depending on *)
  | Vesperas, First -> "Ad I Vesperas"
  | Vesperas, Second -> "Ad II Vesperas"
  | Vesperas, Ordinary -> "Ad Vesperas"
  | Completorium, First -> "Ad I Completorium "
  | Completorium, Second -> "Ad II Completorium"
  | Completorium, Ordinary -> "Completorium"
