actor Main
  var _tuple: (U32, U32) = (3, 4)

  new create(env: Env) =>
    var test: (U32, U32) = (3, 5)
    var (a, b): (U32, U32) = (1, 2)

    if _tuple == test then
      @printf[I32]("eq\n"._cstring())
    else
      @printf[I32]("ne\n"._cstring())
    end

    @printf[I32]("%d, %d\n"._cstring(), _tuple.0, _tuple.1)

    _tuple = var tuple = (a, b) = (b, a)

    @printf[I32]("%d, %d\n"._cstring(), a, b)
    @printf[I32]("%d, %d\n"._cstring(), tuple.0, tuple.1)
    @printf[I32]("%d, %d\n"._cstring(), _tuple.0, _tuple.1)
