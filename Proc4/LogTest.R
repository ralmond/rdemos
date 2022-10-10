library(shiny)
library(futile.logger)
library(future)
library(promises)
plan(multicore)  ## Windows users, go to https://ubuntu.com/download/desktop and follow the instructions there.

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
  showlog <- reactiveVal(0)

  readlog <- reactive({
    showlog()
    cat("Checking log file:",logfile,".\n")
    if (length(logfile) >0L) {
      lf <- file(logfile)
      mess <- readLines(lf)
      close(lf)
      cat("Found ",length(mess),"messages.\n")
      data.frame(Messages=mess)
    } else {
      NULL
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
    logfile <<- "/tmp/Logging.log"
    if (file.exists(logfile)) unlink(logfile)
    status("Working...")
    result <- future({
      flog.appender(appender.file(logfile))
      flog.info("Message 1.")
      flog.info("Message 2.")
      flog.info("Message 3.")
      for (i in 4:25) {
        Sys.sleep(1)
        flog.info(sprintf("Message %d",i))
      }
      "Done."
    }) %...>% status()

    result <- catch(result, function(e) {
      status("Error!")
      print(e$message)
      showNotification(e$message)
    })
    result <- finally(result, function() {
      showlog(-1)
      nclicks(0)
    })
    return(NULL)
  })
  observeEvent(input$log, {
    showlog(showlog()+1)                #Increment counter to force log file reload.
  })

  output$status <- renderText(status())
  output$log <- renderTable(readlog(),colnames=FALSE)

}

shinyApp(ui=ui,server=server)
