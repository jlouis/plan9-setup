# Plan 9 from User space configuration

This repository contains some configuration I did for Plan9 from user space. A quick list of what
is in here is:

* The `gg` command, which is a shorthand `git grep -n` helper for use with acme
* The `a+` and `a-` commands which does indentation.
* The `nocr` command which kills CR
* The `q` command which quotes a selection
* The `acme-start.rc` helper for spawning acme
* The `erlfmt` command which nicely formats Erlang terms (Produces UTF-8 output)

Furthermore plumbing rules for:

* Ocaml - I did some ocaml work so it is nice to be able to jump to error messages when they
  occur in your codes.