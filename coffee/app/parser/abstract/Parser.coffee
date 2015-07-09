class Parser

  query: null
  parsers: []
  parser: null

  constructor:(@query)->
    @InitParsers()
    @parser = @GetParser()
    if @parser is false
      throw false
    return @parser

  InitParsers:->
    @parsers = [
      new ParserSelect @query
      new ParserInsert @query
      new ParserUpdate @query
      new ParserDelete @query
    ]

  GetParser:->
    return @parser if @parser?
    for item in @parsers
      if item.ICan() is true
        return item
    return false