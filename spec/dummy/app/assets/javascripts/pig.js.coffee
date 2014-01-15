class @Pig
  constructor: (name) ->
    @name = name ? "Anon pig"

  greets: (target) ->
    throw new Error("missing target") unless target
    @name + " greets " + target
