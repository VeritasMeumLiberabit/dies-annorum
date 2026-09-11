open Office

let office_to_str ?(kind=Ordinary) office =
  match office, kind with
  (* Normal Offices *)
  | OfficiumLectionis, _ -> "Office of Readings"
  | LaudesMatutinas, _ -> "Lauds"
  | Terciam,_ -> "Terce"
  | Sextam,_ -> "Sext"
  | Nonam,_ -> "None"
  (* Vespers and Compline can be prefixed with I or II depending on *)
  | Vesperas, First -> "Vespers I"
  | Vesperas, Second -> "Vespers II"
  | Vesperas, Ordinary -> "Vespers"
  | Completorium, First -> "Compline I"
  | Completorium, Second -> "Compline II"
  | Completorium, Ordinary -> "Compline"
