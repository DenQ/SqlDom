class ParserInsert extends IParser

  constructor:(@query)-> @

  ICan:->
    return _.startsWith @query, 'insert into '