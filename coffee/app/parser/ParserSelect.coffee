class ParserSelect extends IParser

  constructor:(@query)-> @

  ICan:->
    return _.startsWith @query, 'select '