class Student
  @document_ready: ->
    $('#Klasses').change(Student.route_to_enroll)

  @route_to_enroll: ->
    id = $('#Klasses option:selected').val();
    $.ajax({
      url: '/klasses/'+id+'/update_roster/'
      type: 'post',
      data: {"Klasses" : id},
      dataType: 'script',
      });
$(document).ready(Student.document_ready)