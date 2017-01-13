

distPred <- function(mood){
    if (mood==" ") " Please enter a mood"
    else if (mood=="happy") "Great Barrier Reef"
    else if (mood=="sad") "Florence"
    else if (mood=="alone") "Las Vegas"
    else if (mood=="angry") "Bora Bora"
    else if (mood=="lazy") "Stay home!"
   else if (mood=="romantic") "Paris"
   else if (mood=="depressed") "London"
  else if (mood=="frustrated") "Maui"
  else if (mood=="curious") "Barcelona"
  else if (mood=="confused") "Rio de Janeiro"
  else if (mood=="delighted") "Amsterdam"
  else if (mood=="energetic") "Cairo, Egypt"
  else if (mood=="adventurous") "Bali"
  else if (mood=="hungry") "NYC"

}

distPred2 <- function(month){
  if(month==" ") "Please enter a Month"
  else if (month=="January") "U.S Virgin Islands"
  else if (month=="February") "Trinidad and Tobago"
  else if (month=="March") "Namibia"
  else if (month=="April") "Marland's Eastern Shore"
  else if (month=="May") "Tokyo)"
  else if (month=="June") "Umbria, Italy"
  else if (month=="July") "Cayucos, Calif."
  else if (month=="August") "San francisco"
  else if (month=="September") "Door County, Wis,"
  else if (month=="October") "Panama City, Florida,"
  else if (month=="November") "Austin, Tx"
  else if (month=="December") "European Riverboat Tour"

}


shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$mood})
    output$prediction <- renderPrint({distPred(input$mood)})
    
    output$inputValue2 <- renderPrint({input$month})
    output$prediction2 <- renderPrint({distPred2(input$month)})
  }
)