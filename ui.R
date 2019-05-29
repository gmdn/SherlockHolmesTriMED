dashboardPage(
  
  dashboardHeader(title = "TriMED"),
  
  dashboardSidebar(
    sidebarMenu(
      menuItem("Formal features", tabName = "formal"),
      menuItem("Semantics", tabName = "semantics"),
      menuItem("Diachronic variation", tabName = "diachronic"),
      menuItem("Diastratic variation", tabName = "diastratic")
    )
  ),
  
  dashboardBody(
    tabItems(
      tabItem("formal",
              fluidRow(
                box(title = "Formal Features", solidHeader = TRUE,
                    status = "primary",
                    width = 12,
                    selectizeInput(inputId = "tecnico_tra",
                                   width = "100%",
                                   label = h4("Term"),
                                   choices = data_formal$Term,
                                   options = list(maxItems = 1))
                )
              ),
              fluidRow(
                box(title = "Etimology",
                    width = 12,
                    status = "primary",
                    textAreaInput(inputId = "ethimology_tra", 
                                  label = NULL,#h4("Definition"),
                                  rows = 2)
                    
                )
              ),
              fluidRow(
                box(title = "Genre",
                    width = 6,
                    status = "primary",
                    textAreaInput(inputId = "genre_tra", 
                                  label = NULL,#h4("Definition"),
                                  rows = 1)
                    
                ), 
                box(title = "Spelling",
                    width = 6,
                    status = "primary",
                    textAreaInput(inputId = "spelling_tra", 
                                  label = NULL,#h4("Definition"),
                                  rows = 1)
                    
                ) 
              ),
              fluidRow(
                box(title = "Related Forms",
                    width = 6,
                    status = "primary",
                    textAreaInput(inputId = "related_tra", 
                                  label = NULL,#h4("Definition"),
                                  rows = 1)
                    
                ),
                box(title = "Ortographic Variant",
                    width = 6,
                    status = "primary",
                    textAreaInput(inputId = "variant_tra", 
                                  label = NULL,#h4("Definition"),
                                  rows = 1)
                    
                )
              )
              
              
      ),
      tabItem("semantics",
              fluidRow(
                box(title = "Semantics", solidHeader = TRUE,
                    status = "primary",
                    width = 12,
                    selectizeInput(inputId = "semantics_term",
                                   width = "100%",
                                   label = h4("Term"),
                                   choices = data_semantics$Term,
                                   options = list(maxItems = 1))
                )
              ),
              fluidRow(
                box(title = "Definition",
                    width = 12,
                    status = "primary",
                    textAreaInput(inputId = "definition", 
                                  label = NULL,#h4("Definition"),
                                  rows = 2)
                    
                )
              ),
              fluidRow(
                box(title = "Semic Analysis",
                    width = 12,
                    status = "primary",
                    textAreaInput(inputId = "semic", 
                                  label = NULL,#h4("Definition"),
                                  rows = 1)
                    
                )
              ),
              fluidRow(
                box(title = "Collocations/Phraseology",
                    width = 12,
                    status = "primary",
                    textAreaInput(inputId = "collocation", 
                                  label = NULL,#h4("Definition"),
                                  rows = 1)
                    
                )
              ),
              fluidRow(
                box(title = "Semantic Variant",
                    width = 12,
                    status = "primary",
                    textAreaInput(inputId = "semantic", 
                                  label = NULL,#h4("Definition"),
                                  rows = 2)
                    
                )
              )
      ),
      tabItem("diachronic",
              fluidRow(
                box(title = "Diachronic variation", solidHeader = TRUE,
                    status = "primary",
                    width = 12,
                    selectizeInput(inputId = "diachronic_term",
                                   width = "100%",
                                   label = h4("Term"),
                                   choices = data_diachronic$Term,
                                   options = list(maxItems = 1))
                )
              ),
              fluidRow(
                box(title = "Current use",
                    width = 12,
                    status = "primary",
                    textAreaInput(inputId = "current", 
                                  label = NULL,#h4("Definition"),
                                  rows = 1)
                    
                )
              )
      ),
      tabItem("diastratic",
              fluidRow(
                box(title = "Diastratic variation", solidHeader = TRUE,
                    status = "primary",
                    width = 12,
                    selectizeInput(inputId = "diastratic_term",
                                   width = "100%",
                                   label = h4("Term"),
                                   choices = data_diastratic$Term,
                                   options = list(maxItems = 1))
                )
              ),
              fluidRow(
                box(title = "Specialized register",
                    width = 12,
                    status = "primary",
                    textAreaInput(inputId = "specialized", 
                                  label = NULL,#h4("Definition"),
                                  rows = 1)
                    
                )
              )
      )
              
      
    )
  )
)