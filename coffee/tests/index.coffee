describe "A suite", ->

  it "contains spec with an expectation", ->
    app = new SqlDom()
    expect( app.foo() ).toBe(1)