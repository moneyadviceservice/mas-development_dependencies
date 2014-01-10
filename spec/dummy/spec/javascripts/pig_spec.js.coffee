#= require spec_helper
#= require pig

describe "Pig", ->
  describe "constructor", ->
    it "should have a default name", ->
      pig = new Pig()
      expect(pig.name).to.equal "Anon pig"

    it "should set pig's name if provided", ->
      pig = new Pig("Kate")
      expect(pig.name).to.equal "Kate"

  describe "#greets", ->
    it "should throw if no target is passed in", ->
      expect(->
        (new Pig()).greets()
      ).to.throw Error

    it "should greet passed target", ->
      greetings = (new Pig("Kate")).greets("Baby")
      expect(greetings).to.equal "Kate greets Baby"
