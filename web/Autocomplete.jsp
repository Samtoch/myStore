<%-- 
    Document   : Autocomplete
    Created on : Feb 27, 2017, 11:36:11 AM
    Author     : samuel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>AutoComplete</title>
        <!--<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">-->

        <link href="style/css/jquery-ui.css" type="text/css" rel="stylesheet"/>

        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="style/js/jquery.js"></script>
        <script src="style/js/jquery-ui.js"></script>

        <script>
            $(document).ready(function () {
                $(function () {
                    $("#search").autocomplete({
                        source: function (request, response) {
                            $.ajax({
                                url: "AutoComplete",
                                type: "POST",
                                data: {
                                    term: request.term
                                },
                                dataType: "json",
                                success: function (data) {
                                    response(data);
                                    //alert(data);
                                }
                            });
                        },
                        select: function (event, ui) {
                            //alert(ui.item.value);
                            // Your code
                            return true;
                        }
                    });
                });
            });
        </script>
    </head>
    <body>
        <!--        <button id="somebutton">press here</button>
                <div id="somediv"></div>
            </body>-->
        <div class="ui-widget">
            <label for="somebutton">Tags: </label>
            <input type="text" id="search" name="search" class="search" />

            <div id="somediv"></div>
        </div>


    </body>
</html>