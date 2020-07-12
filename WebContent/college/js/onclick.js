function getcolleges()
{	
	var criteria = document.getElementById("criteria").value;
	var branch = document.getElementById("branch").value;
	var hsc = document.getElementById("hsc").value;
	var jee = document.getElementById("jee").value;
	var cet = document.getElementById("cet").value;
	
	var infra = document.getElementById("infra").value;
	var placement = document.getElementById("placement").value;
	var library = document.getElementById("library").value;
	var crowd = document.getElementById("crowd").value;
	
	if(criteria==""){
		alert("please Select Criteria to search college");
		return false;
	}
	
	if(branch==""){
		alert("please Select Branch");
		return false;
	}
	
	if(infra==""){
		alert("please Select Infrasturcture of college");
		return false;
	}
	
	if(placement==""){
		alert("please Select College Placements Type");
		return false;
	}
	
	if(library==""){
		alert("please Select college library");
		return false;
	}
	
	if(crowd==""){
		alert("please Select College crowd");
		return false;
	}
	
	if(criteria=="jee"){
	if(hsc==""){
		alert("please provide HSC marks");
		return false;
	}
	if(parseInt(hsc)>"600"){
		alert("please provide proper HSC marks");
		return false;
	}
	if(jee==""){
		alert("please provide JEE Main marks");
		return false;
	}
	if(parseInt(jee)>"200"){
		alert("please provide proper JEE Main marks");
		return false;
	}
	}
	else
	{
	if(cet==""){
		alert("please provide CET marks");
		return false;
	}
	if(parseInt(cet)>"200"){
		alert("please provide proper CET marks");
		return false;
	}
	}
	
    $.post(
        "clgcriteria.jsp",
        {
        	criteria:criteria,
        	hsc:hsc,
        	jee:jee,
        	cet:cet,
        	branch:branch,
        	infra:infra,
        	placement:placement,
        	library:library,
        	crowd:crowd
        }
        ,
        function(data) {
                  $('#getdata').html(data);
        }
        );
}