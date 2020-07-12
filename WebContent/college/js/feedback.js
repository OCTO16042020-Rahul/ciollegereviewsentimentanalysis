function getfeedback()
{	
	var feedbackdata = document.getElementById("feedbackdata").value;
	if(feedbackdata==""){
		alert("please write some response feedback");
		return false;
	}
    $.post(
        "../feedback",
        {
        	feedbackdata:feedbackdata
        }
        ,
        function(data) {
                alert("Thanks For valuable feedback");
        }
        );
}