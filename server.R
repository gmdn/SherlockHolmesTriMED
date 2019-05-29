#source("loadData.R")

# load data
#data_en <- read.csv("./trimed_it.csv", stringsAsFactors = FALSE)

function(input, output, session) {
  
  # output$divulgativo_paz <- renderInfoBox({
  #   
  #   term <- data_en %>%
  #     filter(tecnico == input$tecnico_paz) %>%
  #     select(divulgativo)
  #   
  #   infoBox(
  #     title = "Informative",
  #     value = term,
  #     #subtitle = "Size of collection",
  #     icon = icon("info-circle"),
  #     color = "aqua"
  #   )
  #   
  # })
  # 
  # output$popolare_paz <- renderInfoBox({
  #   
  #   term <- data_en %>%
  #     filter(tecnico == input$tecnico_paz) %>%
  #     select(popolare)
  #   
  #   infoBox(
  #     title = "Popular",
  #     value = term,
  #     #subtitle = "Size of collection",
  #     icon = icon("users"),
  #     color = "blue"
  #   )
  #   
  # })
  # 
  # output$definizione_paz <- renderInfoBox({
  #   
  #   term <- data_en %>%
  #     filter(tecnico == input$tecnico_paz) %>%
  #     select(definizione)
  #   
  #   infoBox(
  #     title = "Definition",
  #     value = tags$p(term, style = "font-size: 80%;"),
  #     #subtitle = "Size of collection",
  #     icon = icon("edit"),
  #     color = "teal"
  #   )
  #   
  # })
  # 
  # 
  # output$definizione_med <- renderInfoBox({
  #   
  #   term <- data_en %>%
  #     filter(tecnico == input$tecnico_med) %>%
  #     select(definizione)
  #   
  #   infoBox(
  #     title = "Definition",
  #     value = term,
  #     #subtitle = "Size of collection",
  #     icon = icon("archive"),
  #     color = "teal"
  #   )
  #   
  # })
  # 
  # output$tecnico_med_lang <- renderValueBox({
  # 
  #   term <- data_fr %>%
  #     filter(data_en$tecnico == input$tecnico_med) %>%
  #     select(tecnico)
  #   
  #   valueBox(value = term,
  #            subtitle = "French", 
  #            width = 12,
  #            color = "light-blue")
  #   
  # })
  # 
  # output$divulgativo_med <- renderInfoBox({
  #   
  #   term <- data_en %>%
  #     filter(tecnico == input$tecnico_med) %>%
  #     select(divulgativo)
  #   
  #   infoBox(
  #     title = "Informative",
  #     subtitle = "English",
  #     value = term,
  #     #subtitle = "Size of collection",
  #     icon = icon("info-circle"),
  #     color = "aqua"
  #   )
  #   
  # })
  # 
  # 
  # output$divulgativo_med_lang <- renderInfoBox({
  #   
  #   term <- data_fr %>%
  #     filter(data_en$tecnico == input$tecnico_med) %>%
  #     select(divulgativo)
  #   
  #   infoBox(
  #     title = "Informative",
  #     subtitle = "French",
  #     value = term,
  #     #subtitle = "Size of collection",
  #     icon = icon("info-circle"),
  #     color = "green"
  #   )
  #   
  # })
  # 
  # 
  # output$popolare_med <- renderInfoBox({
  #   
  #   term <- data_en %>%
  #     filter(tecnico == input$tecnico_med) %>%
  #     select(popolare)
  #   
  #   infoBox(
  #     title = "Popular",
  #     subtitle = "English",
  #     value = term,
  #     #subtitle = "Size of collection",
  #     icon = icon("users"),
  #     color = "blue"
  #   )
  #   
  # })
  # 
  # 
  # output$popolare_med_lang <- renderInfoBox({
  #   
  #   term <- data_fr %>%
  #     filter(data_en$tecnico == input$tecnico_med) %>%
  #     select(popolare)
  #   
  #   infoBox(
  #     title = "Popular",
  #     subtitle = "French",
  #     value = term,
  #     #subtitle = "Size of collection",
  #     icon = icon("users"),
  #     color = "olive"
  #   )
  #   
  # })
  # 
  ## observe when translator selects a technical term
  observe({
    
    tecnico <- which(input$tecnico_tra == data_formal$Term)
    #   
    #   updateTextInput(session, "popolare_tra",
    #                   value = data_formal[tecnico, "popolare"])
    #   
    #   updateTextInput(session, "divulgativo_tra", 
    #                   value = data_formal$divulgativo[tecnico])
    #   
    updateTextAreaInput(session, "genre_tra",
                        value = as.character(data_formal[tecnico, "Genre"]))
    
    updateTextAreaInput(session, "spelling_tra",
                        value = as.character(data_formal[tecnico, "Spelling"]))
    
    updateTextAreaInput(session, "ethimology_tra",
                        value = as.character(data_formal[tecnico, "Etymology: derivation/Composition"]))

    updateTextAreaInput(session, "variant_tra",
                        value = as.character(data_formal[tecnico, "Orthographic variant"]))
    
    updateTextAreaInput(session, "related_tra",
                        value = as.character(data_formal[tecnico, "Related forms"]))
    
    
    #   
    #   updateTextInput(session, "tecnico_tra_lang", 
    #                   value = data_fr$tecnico[tecnico])
    # 
    #   updateTextInput(session, "divulgativo_tra_lang", 
    #                   value = data_fr$divulgativo[tecnico])
    #   
    #   updateTextInput(session, "popolare_tra_lang",
    #                   value = data_fr[tecnico, "popolare"])
    #   
    #   updateTextAreaInput(session, "definizione_tra_lang",
    #                       value = data_fr[tecnico, "definizione"])
    #   
    #   updateTextAreaInput(session, "spelling_tra_lang",
    #                       value = data_fr[tecnico, "analisi"])
    #   
    #   updateTextAreaInput(session, "ethimology_tra_lang",
    #                       value = data_fr[tecnico, "caratteristiche"])
    #   
  })
  # 
  # ## observe when doctor selects a technical term
  # observe({
  #   
  #   tecnico <- which(input$tecnico_med == data_en$tecnico)
  #   # extract mesh data
  #   mesh_data <- unlist(strsplit(data_en[tecnico, "mesh"], 
  #                                split = " "))
  #   # build url anchor
  #   url <- a(mesh_data[1], href = mesh_data[2])
  #   
  #   # extract mesh data
  #   snomed_data <- unlist(strsplit(data_en[tecnico, "snomed"], 
  #                                split = " "))
  #   # build url anchor
  #   url2 <- a(snomed_data[1], href = snomed_data[2])
  #   
  #   output$mesh_tab <- renderUI({
  #     tagList(h4("MeSH Term:", url))
  #   })
  #   
  #   output$snomed_tab <- renderUI({
  #     tagList(h4("Snomed Term:", url2))
  #   })
  #   
  # })

  observe({
    
    term <- which(input$semantics_term == data_semantics$Term)
    #   
    #   updateTextInput(session, "popolare_tra",
    #                   value = data_en[tecnico, "popolare"])
    #   
    #   updateTextInput(session, "divulgativo_tra", 
    #                   value = data_en$divulgativo[tecnico])
    #   
    updateTextAreaInput(session, "definition",
                        value = as.character(data_semantics[term, "Definition"]))
    
    updateTextAreaInput(session, "semic",
                        value = as.character(data_semantics[term, "Semic Analysis"]))

    updateTextAreaInput(session, "collocation",
                        value = as.character(data_semantics[term, "Collocations/Phraseology"]))

    updateTextAreaInput(session, "semantic",
                        value = as.character(data_semantics[term, "Semantic variant (synonyms, sister terms)"]))
    
  
  })
  
  
  observe({
    
    term <- which(input$diachronic_term == data_diachronic$Term)
    
    #   
    #   updateTextInput(session, "popolare_tra",
    #                   value = data_en[tecnico, "popolare"])
    #   
    #   updateTextInput(session, "divulgativo_tra", 
    #                   value = data_en$divulgativo[tecnico])
    #   
    updateTextAreaInput(session, "current",
                        value = as.character(data_diachronic[term, "Current Use"]))

  })

  observe({
    
    term <- which(input$diastratic_term == data_diastratic$Term)
    
    #   
    #   updateTextInput(session, "popolare_tra",
    #                   value = data_en[tecnico, "popolare"])
    #   
    #   updateTextInput(session, "divulgativo_tra", 
    #                   value = data_en$divulgativo[tecnico])
    #   
    updateTextAreaInput(session, "specialized",
                        value = as.character(data_diastratic[term, "Specialized register"]))
    
  })
  
}
