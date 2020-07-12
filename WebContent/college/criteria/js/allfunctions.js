function getyearbranch(id)
{	
    $.post(
        "getyear.php",
        {
        	id:id 
        }
        ,
        function(data) {
                  $('#year').html(data);
        }
        );
	$.post(
        "getbranch.php",
        {
        	id:id 
        }
        ,
        function(data) {
                  $('#branch').html(data);
        }
        );
}
function getsemstudent(yid)
{	
	var course=document.getElementById("course").value;
	var branch=document.getElementById("branch").value;
    $.post(
        "getsem.php",
        {
        	yid:yid 
        }
        ,
        function(data) {
                  $('#sem').html(data);
        }
        );
	$.post(
        "getstudent.php",
        {
        	yid:yid,
			course:course,
			branch:branch
        }
        ,
        function(data) {
                  $('#loadtable').html(data);
        }
        );
}
function getsubject(sem)
{	
	var branch=document.getElementById("branch").value;
    $.post(
        "getsubject.php",
        {
        	sem:sem,
			branch:branch
        }
        ,
        function(data) {
                  $('#loadsubject').html(data);
        }
        );
}