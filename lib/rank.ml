type t =
  (* I Section of Solemnities *)
  | Triduum (* 1.1 *)
  | Primary (* 1.2 *)
  | SolemnityGeneral (* 1.3 *)
  | SolemnityProperPatronal (* 1.4a *)
  | SolemnityProperDedication (* 1.4b *)
  | SolemnityProperParishSaint (* 1.4c *)
  | SolemnityProperOrderSaint (* 1.4d *)
  (* II Section of Feast Days *)
  | FeastLordGeneral (* 2.5 *)
  | SundayUnprivilidged (* 2.6 *)
  | FeastGeneral (* 2.7 *)
  | FeastProperDioceasePatron (* 2.8a *)
  | FeastProperDedicationCathedral (* 2.8b *)
  | FeastProperTerratoryPatron (* 2.8c *)
  | FeastProperTitularSaint (* 2.8d *)
  | FeastProperIndividualChurch (* 2.8e *)
  | FeastProperOther (* 2.8f *)
  | FerialPrivileged (* 2.9 *)
  (* III Section of Memorials and Ferial Days *)
  | MemorialGeneral (* 3.10 *)
  | MemorialProperSecondayPatron (* 3.11a *)
  | MemorialProperIndividualChurch (* 3.11b *)
  | MemorialProperDiocease (* 3.11c *)
  | OptionalMemorial (* 3.12 *)
  | Ferial (* 3.13 *)

let to_number rank =
  match rank with
  | Triduum -> 1.1
  | Primary -> 1.2
  | SolemnityGeneral -> 1.3
  | SolemnityProperPatronal -> 1.4
  | SolemnityProperDedication -> 1.4
  | SolemnityProperParishSaint -> 1.4
  | SolemnityProperOrderSaint -> 1.4
  | FeastLordGeneral -> 2.5
  | SundayUnprivilidged -> 2.6
  | FeastGeneral -> 2.7
  | FeastProperDioceasePatron -> 2.8
  | FeastProperDedicationCathedral -> 2.8
  | FeastProperTerratoryPatron -> 2.8
  | FeastProperTitularSaint -> 2.8
  | FeastProperIndividualChurch -> 2.8
  | FeastProperOther -> 2.8
  | FerialPrivileged -> 2.9
  | MemorialGeneral -> 3.10
  | MemorialProperSecondayPatron -> 3.11
  | MemorialProperIndividualChurch -> 3.11
  | MemorialProperDiocease -> 3.11
  | OptionalMemorial -> 3.12
  | Ferial -> 3.13
