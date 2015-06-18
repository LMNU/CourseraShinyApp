data(mtcars)
mtcars$cyl<-as.factor(mtcars$cyl)
fit<-lm(mpg~cyl+hp+wt,data=mtcars)

shinyServer(
    function(input, output) {
        output$inputs <- renderPrint({data.frame(cyl=input$cyl,hp=input$hp,wt=input$wt)})
        output$predict <- renderPrint({predict(fit,data.frame(cyl=factor(input$cyl,levels=c("4","6","8")),hp=input$hp,wt=input$wt))})
    }
)