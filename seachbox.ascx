<%@ Control Language="C#" AutoEventWireup="true" CodeFile="seachbox.ascx.cs" Inherits="seachbox" %>
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
		margin-top:10px;
		margin-left:130px;
		border-radius:5px;
		-moz-border-radius:5px;
		-webkit-border-radius:5px;
	}
	#divResult
	{
		position:absolute;
		width:350px;
		height:250px;
		overflow:scroll;
		display:none;
		margin-top:-1px;
		margin-left:130px;
		border:solid 1px #dedede;
		border-top:0px;
		
		border-bottom-right-radius: 6px;
		border-bottom-left-radius: 6px;
		-moz-border-bottom-right-radius: 6px;
		-moz-border-bottom-left-radius: 6px;
		box-shadow: 0px 0px 5px #999;
		border-width: 3px 1px 1px;
		border-style: solid;
		border-color: #333 #DEDEDE #DEDEDE;
		background-color: white;
		overflow-x:hidden;
	}
	#divResult a
	{
		text-decoration:none;
	
	}
	.display_box
	{
		background-color:White;
		padding:4px; border-top:solid 1px #dedede; 
		font-size:12px; height:50px;
		color:#000;
	}
	.display_box:hover
	{
		background:#3bb998;
		color:#FFFFFF;
		cursor:pointer;
	}
	#shift
	{
		margin-top:20px;
		margin-left:100px;
	}
</style>
<div class="contentArea">
    <input id="inputSearch" class="search" type="text" placeholder="Search by Name or Email or City " /><br />
    <div id="divResult">
    </div>
</div>
