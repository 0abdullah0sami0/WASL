server <- function(input, output) {
  df <- reactiveVal("AN")
  output$id1 <- downloadHandler(
    filename = function() {
      paste0("WASL Program.zip")},
    content = function(Excelfile){
      file.copy("WASL/Excel.zip",Excelfile)}
  )
  
  output$id2 <- downloadHandler(
    filename = function() {
      paste0("WASL Report.zip")},
    content = function(PowerBIfile){
      file.copy("WASL/Power BI.zip",PowerBIfile)}
  )
  
  output$id3 <- downloadHandler(
    filename = function() {
      paste0("WASL.pdf")},
    content = function(pdffile){
      file.copy("WASL/WASL.pdf",pdffile)}
  )
}