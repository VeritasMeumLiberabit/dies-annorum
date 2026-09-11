(lang dune 3.24)

(name dies-annorum)

(generate_opam_files true)

(source
 (github VeritasMeumLiberabit/dies-annorum))

(authors "Jonathan Lowe <me@jonathanlowe.dev>")

(maintainers "Jonathan Lowe <me@jonathanlowe.dev>")

(license GPL-3.0)

(documentation https://url/to/documentation)

(package
 (name dies-annorum)
 (synopsis "Dies Annorum - A OCaml library for determining what liturgical celebrations are on a particular date in the Roman Rite.")
 (description "This library takes a date and a location and lets you know what liturgical celebrations
               occur on that date in the reformed calendar of the Roman Rite. The primary use case
               as of now is for the offices of the Liturgy of the Hours. It may in future be expanded
               to cover other liturgical celebrations.")
 (depends (ocaml (>= 5.0))
          calendar
          (alcotest :with-test))
 (tags
  (calendar liturgical roman-rite)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html
