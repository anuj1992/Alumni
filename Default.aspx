﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
 <head id="Head1" runat="server">
    <title>Simple facebook type Auto suggestion using jquery, ajax, php and mysql</title>
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript">
    $(function () {
        $(".search").keyup(function () {
            var inputSearch = $(this).val();
            var dataString = 'searchword=' + inputSearch;
            if (inputSearch != '') {
                $.ajax({
                    type: "POST",
                    url: "Search.aspx",
                    data: dataString,
                    cache: false,
                    success: function (html) {
                        $("#divResult").html(html).show();
                    }
                });
            } return false;
        });

        jQuery("#divResult").live("click", function (e) {
            var $clicked = $(e.target);
            var $name = $clicked.find('.name').html();
            var decoded = $("<div/>").html($name).text();
            $('#inputSearch').val(decoded);
        });
        jQuery(document).live("click", function (e) {
            var $clicked = $(e.target);
            if (!$clicked.hasClass("search")) {
                jQuery("#divResult").fadeOut();
            }
        });
        $('#inputSearch').click(function () {
            jQuery("#divResult").fadeIn();
        });
    });
</script>
<style type="text/css">
	body{ 
		font-family: 'lucida grande', tahoma, verdana, arial, sans-serif;
	}
	.contentArea{
		width:600px;
		margin:0 auto;
	}
	#inputSearch
	{
		width:350px;
		border:solid 1px #000;
		padding:3px;
	}
	#divResult
	{
		position:absolute;
		width:350px;
		height:200px;
		display:none;
		margin-top:-1px;
		border:solid 1px #dedede;
		border-top:0px;
		overflow:hidden;
		border-bottom-right-radius: 6px;
		border-bottom-left-radius: 6px;
		-moz-border-bottom-right-radius: 6px;
		-moz-border-bottom-left-radius: 6px;
		box-shadow: 0px 0px 5px #999;
		border-width: 3px 1px 1px;
		border-style: solid;
		border-color: #333 #DEDEDE #DEDEDE;
		background-color: white;
	}
	.display_box
	{
		padding:4px; border-top:solid 1px #dedede; 
		font-size:12px; height:50px;
	}
	.display_box:hover
	{
		background:#3bb998;
		color:#FFFFFF;
		cursor:pointer;
	}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color:#f2f2f2;">
&nbsp;<div style="clear:both;">.</div>
</div>
<div class="contentArea">
<input type="text" class="search" id="inputSearch" /> Ex: swadesh, ipsita, dharitri<br /> 
<div id="divResult">
</div>
</div>
    </form>
</body>
</html>
