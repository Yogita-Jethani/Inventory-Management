$(function(){
    

  $("#manage_category_validations").validate({
      
      
      errorElement: 'span', //default input error message container
      errorClass: 'help-block help-block-error', // default input error message class
      focusInvalid: false, // do not focus the last invalid input
      ignore: "", // validate all fields including form hidden input
                
      rules:{
          category_name:{
              required:true,
              
          },
          hsn_code:{
              required:true,
              number:true,
          },
          gst_rate:{
              required:true,
              number:true,
              
          }
      },
      messages:{
          category_name:{
              required:'please insert category name!',
          },
          hsn_code:{
              required:'please insert hsn_code!',
              number:'hsn_code should be numeric only!',
          },
          gst_rate:{
              required:'please insert gst_rate!',
              number:'gst_rate should be numeric only!',
              
          }
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