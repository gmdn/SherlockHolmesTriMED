function(input, output, session) {

  observe({
    
    tecnico <- which(input$tecnico_tra == data_formal$Term)

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

  })

  observe({
    
    term <- which(input$semantics_term == data_semantics$Term)

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
    
    updateTextAreaInput(session, "current",
                        value = as.character(data_diachronic[term, "Current Use"]))

  })

  observe({
    
    term <- which(input$diastratic_term == data_diastratic$Term)

    updateTextAreaInput(session, "specialized",
                        value = as.character(data_diastratic[term, "Specialized register"]))
    
  })
  
}
