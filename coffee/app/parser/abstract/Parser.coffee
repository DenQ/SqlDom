class Parser

  query: null
  parsers: []
  parser: null

  constructor:(@query)->
    @InitParsers()
    @parser = @GetParser()
    return @

  InitParsers:->
    @parsers = [
      new ParserSelect @query
      new ParserInsert @query
      new ParserUpdate @query
      new ParserDelete @query
    ]

  GetParser:->
    for item in @parsers
      if item.ICan() is true
        return item
    return false