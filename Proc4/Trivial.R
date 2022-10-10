library(futile.logger)
logfile <- "/tmp/Logging.log"
signal <- "/tmp/signal"
file.create(signal)
flog.appender(appender.file(logfile))
flog.info("Message 1.")
flog.info("Message 2.")
flog.info("Message 3.")
for (i in 4:25) {
    Sys.sleep(1)
    flog.info(sprintf("Message %d",i))
}
unlink(signal)
