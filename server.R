server <- function(input, output) {
  df <- reactiveVal("AN")
  output$id1 <- downloadHandler(
    filename = function() {
      paste0("WASL Excel File.zip")},
    content = function(Excelfile){
      file.copy("WASL/WASL Excel File.zip",Excelfile)}
  )
  
  output$id2 <- downloadHandler(
    filename = function() {
      paste0("WASL Power BI.zip")},
    content = function(PowerBIfile){
      file.copy("WASL/WASL Power BI.zip",PowerBIfile)}
  )
  
  output$id3 <- downloadHandler(
    filename = function() {
      paste0("WASL.pdf")},
    content = function(pdffile){
      file.copy("WASL/WASL.pdf",pdffile)}
  )
}