function getmarks(id)
{	
	var branch = document.getElementById("branch"+id).value;
	//alert(branch);
    $.post(
        "getmarks.jsp",
        {
            branch:branch,
            id:id
        }
        ,
        function(data) {
                //alert(data);
                  $('#jeemain'+id).html(data);
        }
        );
    
    $.post(
            "getmarks1.jsp",
            {
                branch:branch,
                id:id
            }
            ,
            function(data) {
                    //alert(data);
                      $('#cetcutoff'+id).html(data);
            }
            );
}

function savemarks(id)
{	
	//alert(id);
	var branch = document.getElementById("branch"+id).value;
	//alert(branch);
	var jeemainmarks = document.getElementById("jeemainmarks"+id).value;
	//alert(jeemainmarks);
	var cutoffmarks = document.getElementById("cutoffmarks"+id).value;
	//alert(cutoffmarks);
	
    $.post(
        "savemarks.jsp",
        {
            branch:branch,
            id:id,
            jeemainmarks:jeemainmarks,
            cutoffmarks:cutoffmarks
        }
        ,
        function(data) {
               alert('Updated successfully');
        }
        );
}