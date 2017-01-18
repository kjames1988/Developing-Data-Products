

library(shiny)

shinyUI(
  pageWithSidebar(
    
    headerPanel("Destination Prediction by Mood and Month"),
    sidebarPanel(
      selectInput('mood', label=" How are you feeling? (Select your emotion):",
          list(" " ,"happy", "sad","alone", "angry","lazy","romantic","depressed", "frustrated","curious","delighted","energetic","adventurous","hungry")), 
      
      selectInput('month', label=" Select Month:",
      list(" ", "January", "February","March", "April","May","June","July", "August","September","October","December")),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Suggested Destination'),
      h4('You said you are feeling:'),
      verbatimTextOutput("inputValue"),
      h4('You entered this month:'),
      verbatimTextOutput("inputValue2"),
      h4('Right! If you are feeling that way you should travel to:  '),
      verbatimTextOutput("prediction"),
      h4('Or travel here: '),
      verbatimTextOutput("prediction2")
     
    )
  )
)
