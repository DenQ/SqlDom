class ParserDelete extends IParser

  constructor:(@query)-> @

  ICan:->
    return _.startsWith @query, 'delete '