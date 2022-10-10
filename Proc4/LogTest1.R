library(shiny)

checkPassword <- function (uid, pwd) TRUE


ui <- fluidPage(

    titlePanel("Logging Test"),
    tags$head(tags$script(src = "message-handler.js")),
    fluidRow(
        textInput("adminid", label = "Username:",
                  width = 500),
        passwordInput("adminpwd", label = "Password:",
                      width = 500),
        textInput("branch", label = "Vesion Branch:",
                  value="PP-main",width = 500)
    ),
    fluidRow(
        actionButton("go","Go"),
        actionButton("log","Show Log.")
    ),
    fluidRow("Model Builder is",textOutput("status")),
    fluidRow(tableOutput("log"))
)

logfile <- character()
server <- function(input, output) {

  status <- reactiveVal("Ready.")
  nclicks <- reactiveVal(0)
  logstatus <- reactiveValues()
  logstatus$logfile <- character()
  logstatus$requests <- 0

  readlog <- reactive({
    counts <- logstatus$requests
    cat("Checking log file:",logstatus$logfile,". (",counts,")\n")
    if (length(logstatus$logfile) >0L  && file.exists(logstatus$logfile)) {
      if (status()=="Working..." && !file.exists("/tmp/signal")) status("Done.")
      lf <- file(logstatus$logfile)
      mess <- readLines(lf)
      close(lf)
      cat("Found ",length(mess),"messages.\n")
      data.frame(Messages=mess)
    } else {
      data.frame(Messages="No log file yet.")
    }
  })
  observeEvent(input$go, {
    showNotification(
        ifelse(checkPassword(input$adminid,input$adminpwd),
               sprintf("Logged into application %s.", input$branch),
               "Authentication Error."))
    if (nclicks() > 0L) {
      showNotification("Already running model builder.")
      return (NULL)
    }
    logstatus$logfile <- "/tmp/Logging.log"
    if (file.exists(logstatus$logfile)) unlink(logstatus$logfile)
    status("Working...")

    system2("/home/ralmond/Projects/rgroup-shiny/Proc4/Trivial",wait=FALSE)

    return(NULL)
  })
  observeEvent(input$log, {
    logstatus$requests <- logstatus$requests+1                #Increment counter to force log file reload.
  })

  output$status <- renderText(status())
  output$log <- renderTable(readlog(),colnames=FALSE)

}

shinyApp(ui=ui,server=server)
