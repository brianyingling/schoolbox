class Student
  @document_ready: ->
    $('#students').dataTable()

$(document).ready(Student.document_ready)