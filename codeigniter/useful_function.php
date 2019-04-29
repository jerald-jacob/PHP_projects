<?php
echo "How to pass multiple checkbox values in php";
?>
<form action="" method="post">
<table border="8" style="align-items: center;">
	<tbody>
<tr>	
	
	<tr><td><input type="checkbox" name="item" value ="1"><span>powder</span></td></tr>
	<tr><td><input type="checkbox" name="item" value ="2"><span>Box</span></td></tr>
	<tr><td><input type="checkbox" name="item" value ="3"><span>Charger</span></td></tr>
	<tr><td><input type="checkbox" name="item" value ="4"><span>Fan</span></td></tr>
</tr>
</tbody>
</table>
<table border="8" style="align-items: center;">
	<tbody>
<tr>		
	<tr><td><input type="checkbox" name="tax" value ="1"><span>CGST</span><br></td></tr>
	<tr><td><input type="checkbox" name="tax" value ="1"><span>SGST</span><br></td></tr>
	<tr><td><input type="checkbox" name="tax" value ="1"><span>IGST</span><br></td></tr>

	
<tr><td><button name="submit" value="submit"> SAVE</button></td></tr>

</tr>
</tbody>
</table>

</form>
<script type="text/javascript">

$('#submit_btn').click(function() {
  var norms_id_array = $('#norms_id_array').val('')[0];
  var item_id_array=$('#item_id_array').val('')[0];
  $('#item_id:checked').each(function(){
     item_id_array.value += this.value + 'item';
  });
  $('#norm_id:checked').each(function(){
     norms_id_array.value += this.value + 'norm';
  });



 
 var data = new Array((item_id_array.value+' '),(norms_id_array.value+' '));
alert(data);
});
          $.ajax({
         type : "post",
         url:'<?php echo base_url();?>admin/stuattendence/norms_items', 
          data:  {ids : JSON.stringify(data)},
          dataType: "JSON",
         success:  function(pdata){
            
         if(pdata.status == "success"){
              alertify.alert("Updated");
              //location.reload();
            }
            
          }
             
         });

</script>
<!--<script type="text/javascript">
    $(document).ready(function() {
        $("button").click(function(){
            var item_id = [];
            $.each($("input[name='item_id']:checked"), function(){            
                item_id.push($(this).val());
            });
          //  alert("My favourite item_name are: " + item_id);

        });
    });
</script>-->

<script type="text/javascript">
         $( document ).ready( function() {
  $( '.js-example-basic-single' ).select2({
      templateResult: function (item) {
        if (item.loading) {
          return item.text;
        }

        var $result = $('<strong></strong>');
        $result.text(item.text);

        return $result;
      },
    
    
  });
  
});

$( "#event_id" ).change(function() {
   
  //var student_status=$("#student_status").val();
  var event_status=$("#event_id").val();
 
  $("#category_id").html("");
  $.ajax({

            type : "POST",
            url:'<?php echo base_url();?>admin/StudentApplication/get_event_search',
            data: {'event_status':event_status}, 
            success:  function(pdata){

              $("#category_id").append(pdata);
            }

        });
  //var veri= $("#student_id").val();
         //   alert(veri);

}); 
     </script>
