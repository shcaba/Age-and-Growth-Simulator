#
#
#
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Growth curve sampler"),
    h3(strong("Demonstrate the effect of sampling lengths and ages on estimating von Bertalanffy growth curve parameters ")),
    

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            h4(p(("VBGF parameter inputs ."))),
            fluidRow(column(width=6,numericInput("Linf","Linf (in cm):", value=NA,min=1, max=10000, step=0.01)),    
                column(width=6,numericInput("k_vbgf", "k:", value=NA,min = 0.001, max = 1,step=0.01))),
            fluidRow(column(width=6,numericInput("t0", "t0", value=NA,min = -15, max = 15,step=0.01)),
                column(width=6,numericInput("Lt_CV", "Length CV", value=0.1,min = 0.001, max = 1,step=0.01))),
            h4(p(("Selectivity paramters"))),
            h5(p(("Determines how to sample from the lengths"))),
            fluidRow(column(width=6,numericInput("Sel_1","P1", value=NA,min=1, max=10000, step=0.01)),    
                     column(width=6,numericInput("Sel_2", "P2", value=NA,min = 0.001, max = 1,step=0.01))),
            h4(p(("# of samples"))),
            fluidRow(column(width=8,numericInput("Namsps","Individuals to sample", value=200,min=1, max=10000, step=0.01))),
                     
                ),

        # Show a plot of the generated distribution
        mainPanel(
            
        )
    )
))
