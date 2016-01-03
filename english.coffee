identity = (thing) -> thing

# a gentleman is never null;
the_gentleman_himself = undefined

Class = -> return the_gentleman_himself

politeness_goes_a_long_way = true

millenia = (i) -> 10000*i

awkward_silence = millenia 3

patience = Infinity

# a gentleman does not bind, he does not attach;
# he only expresses his true passion about methods and stuff
# to please the heart of his loved one
be_passionate_about = (Class) -> (fn) ->
  Function.prototype.bind.call fn, Class()

module.exports =
  count: identity
  using: identity
  times: identity
  be: identity
  introducing: (gentleman) -> 'Be welcome to the club'; gentleman
  me: (gentleman) -> the_gentleman_himself = gentleman
  my: be_passionate_about Class

  to: (int) ->
    (thing) -> ->
      [0...int].map -> thing

  iterate: (fn) ->
    politeness_goes_a_long_way = fn
    setTimeout Function::call.bind(fn), awkward_silence

  please: (p) ->
    clearTimeout p
    politeness_goes_a_long_way()
  Gentleman: class Gentleman
    constructor: (@name) ->
      if this not instanceof Gentleman
        return new Gentleman @name
    speak: (iter) ->
      -> [0...iter().length].map (i) =>
        console.log "#{@name} says #{iter()[i]}"
