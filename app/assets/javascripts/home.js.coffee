$(document).ready ->
  
  $("#to_currency option").filter ->
    return this.text == "IDR"
  .attr("selected", true)

  $("#from_currency option").filter ->
    return this.text == "USD"
  .attr("selected", true)

  $("#number").keyup ->
    if parseFloat($("#from_currency").val()) < parseFloat($("#to_currency").val())
      sel_value = parseFloat($("#to_currency").val()) * parseFloat($("#from_currency").val()) * $(this).val()
    else
      sel_value = (parseFloat($("#to_currency").val()) / parseFloat($("#from_currency").val())) * $(this).val()
    $("#results").text(sel_value)

  $("#switch_link").click ->
    from_currency_text = $("#from_currency option:selected").text()
    to_currency_text = $("#to_currency option:selected").text()
    $("#to_currency option").filter ->
      return this.text == from_currency_text
    .attr("selected", true)
    $("#from_currency option").filter ->
      return this.text == to_currency_text
    .attr("selected", true)
    if parseFloat($("#from_currency").val()) < parseFloat($("#to_currency").val())
      sel_value = parseFloat($("#to_currency").val()) * parseFloat($("#from_currency").val()) * $("#number").val()
    else
      sel_value = (parseFloat($("#to_currency").val()) / parseFloat($("#from_currency").val())) * $("#number").val()
    $("#results").text(sel_value)
    event.preventDefault()
