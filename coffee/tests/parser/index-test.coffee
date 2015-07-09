describe 'SQL parsing', ->

  it 'Exception if query incorrect', ->
    expect((->
      new Parser 'into'
    )).toThrow()

  it 'Select parsing', ->
    parser = new Parser 'select * from table'
    expect( parser instanceof ParserSelect ).toBe true