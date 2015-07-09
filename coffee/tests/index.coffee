describe "A suite", ->

  it "contains spec with an expectation", ->
    SqlDom 'select * from .container'
    expect(1).toBe 1