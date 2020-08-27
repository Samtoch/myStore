<%-- 
    Document   : Dashboard
    Created on : Feb 5, 2017, 1:39:14 PM
    Author     : samuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0" />
        <title>SweetAlert</title>

        <link href="style2/example.css" type="text/css" rel="stylesheet"> 
        <script src="style/js/jquery-1.8.3.min.js"></script>
        <script src="style2/sweetalert-dev.js"></script>
        <link href="style2/sweetalert.css" type="text/css" rel="stylesheet">
    </head>

    <body>
        

      
        <div class="showcase sweet">
            <button>Keep</button>
        </div>
        
            
            <div class="examples">
            <div class="success">
                    <div class="ui">
                        <button type="submit" value="Sign Up">My Button!</button>
                    </div>
            </div>
            </div>
            
        
        <script>

            document.querySelector('.showcase.sweet button').onclick = function () {
                swal("Oops...", "Something went wrong!", "error");
            };

            document.querySelector('div.examples div.success button').onclick = function () {
                var res = '30';
                if(res == '3'){
                    swal("Good job!", "The Value of Var is 20", "success");
                }
                else{
                    swal("Good job!", "You clicked the button!", "success");
                }
                
            };

            

        </script>



    </body>

</html>