describe 'SQL parsing', ->

  it 'Exception if query incorrect', ->
    expect((->
      new Parser 'qqq'
    )).toThrow()

  it 'Select parsing', ->
    parser = new Parser 'select ...'
    expect( parser instanceof ParserSelect ).toBe true

  it 'Insert parsing', ->
    parser = new Parser 'insert into ...'
    expect( parser instanceof ParserInsert ).toBe true

  it 'Update parsing', ->
    parser = new Parser 'update ...'
    expect( parser instanceof ParserUpdate ).toBe true

  it 'Delete parsing', ->
    parser = new Parser 'delete ...'
    expect( parser instanceof ParserDelete ).toBe true