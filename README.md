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

# Other setup things

I make use of some Go packages:

	go get github.com/eaburns/E2
	go get github.com/eaburns/Watch
	go get 9fans.net/go/acme/acmego
	
	# This one is bound to move soon
	go get code.google.com/p/rsc/cmd/jfmt
	
These are quite important for the correct operation. E2 is a better version of the E command. Watch can watch a subdirectory for file changes. The `jfmt` command can reformat JSON data. And acmego uses the (new) 'log' feature of acme to make sure things are formatted nicely when working with go code.
	
I add the following to my `.profile`:

	# Plumb files instead of starting new editor.
	EDITOR=E
	unset FCEDIT VISUAL
	
This sets up the editor to be the `E` command. It checks every second if the file has
a change according to `ls -l` and lets you use acme as the editor when editing stuff.
I use that a lot with `git(1)` so commits can be kept inside acme.
	
	# Get rid of backspace characters in Unix man output.
	PAGER=nobs

I kill less as a default pager. This allows me to just scroll in the acme window rather
than ending up with a mess. `nobs` removes certain control characters so the formatting
is better.
		
