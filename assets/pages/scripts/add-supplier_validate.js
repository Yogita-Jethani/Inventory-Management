$(function(){
    

  $("#add_supplier_form").validate({
      
      
      errorElement: 'span', //default input error message container
      errorClass: 'help-block help-block-error', // default input error message class
      focusInvalid: false, // do not focus the last invalid input
      ignore: "", // validate all fields including form hidden input
                
      rules:{
          supplier_name:{
              required:true,
              
          },
          supplier_address:{
              required:true,
          },
           supplier_email:{
              required:true,
               email:true,
          },
           supplier_contact:{
                required:true,
                number:true,
          },
         
          
      },
      messages:{
          supplier_name:{
              required:'please insert supplier name!',
          },
          supplier_address:{
              required:'please insert supplier address!',
          },
          supplier_email:{
              required:'please insert supplier email!',
          },
          supplier_contact:{
              required:'please insert supplier contact!',
          },
    
         
      },
                errorClass:'help-block',
      
                highlight: function (element) { // hightlight error inputs
                   $(element)
                        .closest('.form-group').addClass('has-error'); // set error class to the control group
                },

                unhighlight: function (element) { // revert the change done by hightlight
                    $(element)
                        .closest('.form-group').removeClass('has-error'); // set error class to the control group
                },

                success: function (label) {
                    label
                        .closest('.form-group').removeClass('has-error'); // set success class to the control group
                },

                submitHandler: function (form) {
                    error.hide();
                    form[0].submit(); // submit the form
                }
  });
  
  });