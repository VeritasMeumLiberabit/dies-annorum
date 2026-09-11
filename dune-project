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
 (synopsis "A short synopsis")
 (description "A longer description")
 (depends ocaml
          calendar
          (alcotest :with-test))
 (tags
  ("add topics" "to describe" your project)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html
