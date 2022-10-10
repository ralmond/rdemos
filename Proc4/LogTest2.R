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
        actionButton("go","Go")
    ),
    fluidRow(p("Model Builder is",textOutput("status"))),
    fluidRow(tableOutput("log"))
)


server <- function(input, output) {

  status <- reactiveVal("Ready.")
  nclicks <- reactiveVal(0)
  logstatus <- reactiveValues()
  logstatus$logfile <- character()
  logstatus$log <- data.frame(Messages="No log file yet.")
  logtimer <- reactiveTimer(1000)

  readlog <- reactive({
    logtimer()
    if (status()=="Working..." &&
        length(logstatus$logfile) >0L  &&
        file.exists(logstatus$logfile)) {
      cat("Checking log file:",logstatus$logfile,".\n")
      if (!file.exists("/tmp/signal")) status("Done.")
      lf <- file(logstatus$logfile)
      mess <- readLines(lf)
      close(lf)
      cat("Found ",length(mess),"messages.\n")
      logstatus$log <- data.frame(Messages=mess)
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
  output$status <- renderText(status())
  output$log <- renderTable({readlog();logstatus$log},colnames=FALSE)

}

shinyApp(ui=ui,server=server)
