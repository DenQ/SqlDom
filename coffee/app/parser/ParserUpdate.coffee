class ParserUpdate extends IParser

  constructor:(@query)-> @

  ICan:->
    return _.startsWith @query, 'update '