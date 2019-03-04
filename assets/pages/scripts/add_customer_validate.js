$(function(){
    

  $("#add_customer_form").validate({
      
      
      errorElement: 'span', //default input error message container
      errorClass: 'help-block help-block-error', // default input error message class
      focusInvalid: false, // do not focus the last invalid input
      ignore: "", // validate all fields including form hidden input
                
      rules:{
          customer_name:{
              required:true,
              
          },
          customer_address:{
              required:true,
          },
           customer_email:{
              required:true,
               email:true,
          },
           customer_contact:{
                required:true,
                number:true,
          },
         
          
      },
      messages:{
          customer_name:{
              required:'please insert customer name!',
          },
          customer_address:{
              required:'please insert customer address!',
          },
          customer_email:{
              required:'please insert customer email!',
          },
          customer_contact:{
              required:'please insert customer contact!',
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