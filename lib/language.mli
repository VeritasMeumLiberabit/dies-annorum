module type Language = sig
  val office_to_string: ?kind:Office.kind -> office: Office.t -> string
end
