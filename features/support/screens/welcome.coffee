class WelcomeScreen extends Screen
#  anchor: -> view.elements()["Welcome to MyApp"]
  
  constructor: ->
    super 'welcome'
    
    extend @elements,
    'Hello' : -> view.buttons()["Say Hello"]
    
    extend @actions,
    'Type "([^"]*)"$': (text) ->
      field = view.elements()['nameField']
      field.setValue text