<%@page import="Database.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>

<script type="text/javascript">
function callfile(str,cname,image) {
	location="college.jsp?id="+str+"&cname="+cname+"&image="+image;
}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
@charset "UTF-8"; 

[ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak,
	.x-ng-cloak, .ng-hide:not (.ng-hide-animate ){
	display: none !important;
}

ng\:form {
	display: block;
}

.ng-animate-shim {
	visibility: hidden;
}

.ng-anchor {
	position: absolute;
}
</style>
<meta name="fragment" content="!">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Top Engineering Colleges by Faculty based on student ratings</title>

<meta name="description"
	content="Top Engineering colleges in India based on Faculty ratings given by the students">

<style>
.init-loading {
	font-family: arial;
	padding: 20px;
	text-align: center;
	min-height: 100%;
	min-height: 100vh;
	padding: 100px 0;
	padding-top: 25vh;
	margin: 0;
}
</style>

<!-- importing google fonts -->
<!--Application CSS Files-->
<!--ToDo: Need to consider bundling and set cdn url in web.config-->
<link rel="stylesheet" href="css/app.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link href="css/common.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/angucomplete-alt.min.css">
<link rel="stylesheet" href="css/jquery-ui.min.css">
<link rel="stylesheet" href="css/collections.min.css">

</head>
<body>
	<section class="content ng-scope" ng-app="cbApp">
			<%
				DatabaseConnection db1 = new DatabaseConnection();
				db1.dbconnection();
				ResultSet rs1 = null;
				String subj = request.getParameter("sub");
				String sqlqry="Select id from collegerating order by "+subj+" DESC";
				rs1=db1.getResultSet(sqlqry);
				if(rs1.next()){
				String id = rs1.getString("id");
				String sql1="Select * from college where id ='"+id+"'";
				rs1=db1.getResultSet(sql1);
				if(rs1.next())
				{
				String name = rs1.getString("name");
				String imageurl = rs1.getString("imageurl");
				Double rate = rs1.getDouble("rate");
		%>
<%-- 		<%=imageurl %> --%>
	    <div class="big-image header-image" style="background-image: url(images/<%=subj%>.jpg);" lazy-img-container="" lazy-img="<%=imageurl %>">
        <div class="image-overlay collection-overlay"></div>
        <div class="collections-heading-container">
        
            <h1 class="collections-heading">
                <!-- ngIf: isRatingSpecific -->
                <span ng-if="isRatingSpecific" class="ng-binding ng-scope">Top Rated <br> Engineering Colleges </span>
                <!-- end ngIf: isRatingSpecific -->
                <br>
                <!-- ngIf: isRatingSpecific -->
                <span ng-if="isRatingSpecific" class="rating-criteria-header-text ng-binding ng-scope"> based on college <%= subj %> </span><br>
                 <span ng-if="isRatingSpecific" class="rating-criteria-header-text ng-binding ng-scope"> <%=name %> </span>
                <!-- end ngIf: isRatingSpecific -->
            </h1>
        </div>
    </div>
    <%
				}
		}
		%>
		
    <div class="container container-body container-collection">
        <!-- ngIf: isRatingSpecific -->
        <%
        String subjct = request.getParameter("sub");
        %>
        <h2 ng-if="isRatingSpecific" class="heading-top-collections collection-heading stream-specific-heading ng-scope" style="text-transform: uppercase"> BASED ON STUDENT RATINGS FOR <%=subjct %> </h2>
        <!-- end ngIf: isRatingSpecific -->
        <div class="row">
            <collection-list is-stream-specific="isStreamSpecific" is-rating-specific="isRatingSpecific" collection-list-data="collectionsListData" class="ng-isolate-scope"><!-- ngRepeat: collectionList in collectionListData --><div class="collection-boxes ng-scope" ng-repeat="collectionList in collectionListData">
	
		<!-- uiView:  -->
		<div ui-view="" autoscroll="false" class="ng-scope">
			<div class="view-bg-gray ng-scope">
				<div class="container container-body container-collection">
					<div class="row">
						<collection-list is-stream-specific="isStreamSpecific"
							is-rating-specific="isRatingSpecific"
							collection-list-data="collectionsListData"
							class="ng-isolate-scope"><!-- ngRepeat: collectionList in collectionListData -->
						<div class="collection-boxes ng-scope"
							ng-repeat="collectionList in collectionListData">
							<div class="col-xs-12 collection-row col-md-12 border-none collection-row-last"
								ng-class="{&#39;col-md-11&#39;:!isRatingSpecific, &#39;col-md-12&#39;:isRatingSpecific, &#39;border-none&#39; : isRatingSpecific, &#39;collection-row-last&#39;: $last}">










							<%
							DatabaseConnection db = new DatabaseConnection();
							db.dbconnection();
							ResultSet rs = null;
							String subject = request.getParameter("sub");
							String sql="Select id,"+subject+" from collegerating order by "+subject+" DESC";
							rs=db.getResultSet(sql);
							while(rs.next())
								{
									String id = rs.getString("id");
									String[] subjects = rs.getString(subject).split(",");
									double rate = Double.valueOf(subjects[0]);
									String rating = String.format("%.01f", rate);
									
									String qry="Select * from college where id ='"+id+"'";
									ResultSet rr = db.getResultSet(qry);
									if(rr.next()){
									String name = rr.getString("name");
									String imageurl = rr.getString("imageurl");
		//							double rating = rr.getDouble("rate");
							%>

								<div onclick="callfile('<%=id%>','<%=name%>','<%=imageurl%>')" class="col-md-4 col-sm-6 col-xs-12 collection-box ng-scope"
									ng-repeat="collection in collectionList.colleges">
									<collection-card field-id="collectionList.fieldid"
										field-name="collectionList.fieldname"
										rating-name="collectionList.ratingname"
										rating-id="collectionList.ratingid"
										collection-data="collection"
										is-stream-specific="isStreamSpecific"
										is-rating-specific="isRatingSpecific" class="ng-isolate-scope">
									<span class="collection-container"
										ng-click="openCourseProfile($event)">
										<div class="college-image padding-none">

											<!-- ngIf: collectionData.headerthumbimageurl -->
											<img ng-if="collectionData.headerthumbimageurl"
												class="imgfullwidth ng-scope"
												src="<%= imageurl%>"
												lazy-img="<%= imageurl%>">
										</div>
										<div class="image-overlay"></div>
										<div class="ratings">
											<span class="arating-text R10"> <%=rating %> </span>
										</div>
										<div class="clearfix"></div>
										<div>
											<a class="college-name ng-binding"
												href="college.jsp?id=<%=id%>&cname=<%=name%>&image=<%=imageurl%>"><%=name %> </a>
										</div>
									</span></collection-card>
							
								</div>
								<!-- end ngRepeat: collection in collectionList.colleges -->
								<%
									}
								}
								%>
							</div>
							<!-- ngIf: !isRatingSpecific -->
						</div>
						<!-- end ngRepeat: collectionList in collectionListData --></collection-list>
					</div>



					<!-- ngIf: isRatingSpecific && !isMobileScreen -->
					<h4 ng-if="isRatingSpecific &amp;&amp; !isMobileScreen"
						class="text-center view-other-top-rated ng-binding ng-scope">
						VIEW OTHER TOP RATED ENGINEERING COLLEGES BY</h4>
					<!-- end ngIf: isRatingSpecific && !isMobileScreen -->




					<!-- ngIf: isRatingSpecific -->
					<div ng-if="isRatingSpecific" class="row other-cards ng-scope">
						<!-- ngRepeat: otherRating in otherRatingList -->
						<div class="col-md-4 rating-criteria ng-scope"
							ng-repeat="otherRating in otherRatingList">
							<other-rating-card field-id="collectionsListData[0].fieldid"
								field-name="collectionsListData[0].fieldname"
								rating-id="collectionsListData[0].ratingid"
								rating-name="collectionsListData[0].ratingname"
								other-rating-data="otherRating" class="ng-isolate-scope">
							<a class="collection-container"
								ng-href="/top-rated-colleges/engineering/employability/"
								click-tracker="{ &quot;location&quot;: &quot;Bottom&quot;, &quot;EventType&quot;: &quot;Navigation&quot;, &quot;Module&quot;:&quot;Top Rated&quot;, &quot;Feature&quot;: &quot;Stream-Rating Collections&quot;, &quot;SubFeature&quot;:&quot;Other Collections Card&quot;, &quot;EventParameter&quot;: {&quot;cardcriteriaid&quot;:11, &quot;cardcriterianame&quot;:&quot;Employability&quot;, &quot;streamid&quot;:23, &quot;streamname&quot;:&quot;Engineering&quot;, &quot;url&quot;:&quot;/top-rated-colleges/engineering/employability/&quot;}, &quot;EventData&quot;:{&quot;currentstreamid&quot;:23,&quot;currentstreamname&quot;:&quot;Engineering&quot;, &quot;currentcriteriaid&quot;:12, &quot;currentcriterianame&quot;:&quot;Faculty&quot;}, &quot;EventMode&quot;:&quot;Action&quot;, &quot;Applicable&quot;:&quot;Both&quot;}"
								redirection="true"
								href="specification.jsp?sub=placements">
								<div class="parameter-image" lazy-img-container=""
									lazy-img="images/placements.jpg"
									style="background: url(images/placements.jpg) center center/cover no-repeat;">
								</div>
								<div class="image-overlay"></div>
								<h1 class="ng-binding">On-Campus Facilities</h1>
							</a></other-rating-card>
						</div>
						<!-- end ngRepeat: otherRating in otherRatingList -->
						
						<div class="col-md-4 rating-criteria ng-scope"
							ng-repeat="otherRating in otherRatingList">
							<other-rating-card field-id="collectionsListData[0].fieldid"
								field-name="collectionsListData[0].fieldname"
								rating-id="collectionsListData[0].ratingid"
								rating-name="collectionsListData[0].ratingname"
								other-rating-data="otherRating" class="ng-isolate-scope">
							<a class="collection-container"
								ng-href="/top-rated-colleges/engineering/on-campus-facilities/"
								click-tracker="{ &quot;location&quot;: &quot;Bottom&quot;, &quot;EventType&quot;: &quot;Navigation&quot;, &quot;Module&quot;:&quot;Top Rated&quot;, &quot;Feature&quot;: &quot;Stream-Rating Collections&quot;, &quot;SubFeature&quot;:&quot;Other Collections Card&quot;, &quot;EventParameter&quot;: {&quot;cardcriteriaid&quot;:13, &quot;cardcriterianame&quot;:&quot;On-Campus Facilities&quot;, &quot;streamid&quot;:23, &quot;streamname&quot;:&quot;Engineering&quot;, &quot;url&quot;:&quot;/top-rated-colleges/engineering/on-campus-facilities/&quot;}, &quot;EventData&quot;:{&quot;currentstreamid&quot;:23,&quot;currentstreamname&quot;:&quot;Engineering&quot;, &quot;currentcriteriaid&quot;:12, &quot;currentcriterianame&quot;:&quot;Faculty&quot;}, &quot;EventMode&quot;:&quot;Action&quot;, &quot;Applicable&quot;:&quot;Both&quot;}"
								redirection="true"
								href="specification.jsp?sub=faculty">
								<div class="parameter-image" lazy-img-container=""
									lazy-img="images/faculty.jpg"
									style="background: url(images/faculty.jpg) center center/cover no-repeat;">
								</div>
								<div class="image-overlay"></div>
								<h1 class="ng-binding">Faculty</h1>
							</a></other-rating-card>
						</div>
						
						<!-- end ngRepeat: otherRating in otherRatingList -->
						<div class="col-md-4 rating-criteria ng-scope"
							ng-repeat="otherRating in otherRatingList">
							<other-rating-card field-id="collectionsListData[0].fieldid"
								field-name="collectionsListData[0].fieldname"
								rating-id="collectionsListData[0].ratingid"
								rating-name="collectionsListData[0].ratingname"
								other-rating-data="otherRating" class="ng-isolate-scope">
							<a class="collection-container"
								ng-href="/top-rated-colleges/engineering/peer-support/"
								click-tracker="{ &quot;location&quot;: &quot;Bottom&quot;, &quot;EventType&quot;: &quot;Navigation&quot;, &quot;Module&quot;:&quot;Top Rated&quot;, &quot;Feature&quot;: &quot;Stream-Rating Collections&quot;, &quot;SubFeature&quot;:&quot;Other Collections Card&quot;, &quot;EventParameter&quot;: {&quot;cardcriteriaid&quot;:14, &quot;cardcriterianame&quot;:&quot;Peer Support&quot;, &quot;streamid&quot;:23, &quot;streamname&quot;:&quot;Engineering&quot;, &quot;url&quot;:&quot;/top-rated-colleges/engineering/peer-support/&quot;}, &quot;EventData&quot;:{&quot;currentstreamid&quot;:23,&quot;currentstreamname&quot;:&quot;Engineering&quot;, &quot;currentcriteriaid&quot;:12, &quot;currentcriterianame&quot;:&quot;Faculty&quot;}, &quot;EventMode&quot;:&quot;Action&quot;, &quot;Applicable&quot;:&quot;Both&quot;}"
								redirection="true"
								href="specification.jsp?sub=events">
								<div class="parameter-image" lazy-img-container=""
									lazy-img="images/events.jpg"
									style="background: url(images/events.jpg) center center/cover no-repeat;">
								</div>
								<div class="image-overlay"></div>
								<h1 class="ng-binding">Events, Fests etc</h1>
							</a></other-rating-card>
						</div>
						<!-- end ngRepeat: otherRating in otherRatingList -->
						
						
						<div class="col-md-4 rating-criteria ng-scope"
							ng-repeat="otherRating in otherRatingList">
							<other-rating-card field-id="collectionsListData[0].fieldid"
								field-name="collectionsListData[0].fieldname"
								rating-id="collectionsListData[0].ratingid"
								rating-name="collectionsListData[0].ratingname"
								other-rating-data="otherRating" class="ng-isolate-scope">
							<a class="collection-container"
								ng-href="/top-rated-colleges/engineering/anti-ragging-support/"
								click-tracker="{ &quot;location&quot;: &quot;Bottom&quot;, &quot;EventType&quot;: &quot;Navigation&quot;, &quot;Module&quot;:&quot;Top Rated&quot;, &quot;Feature&quot;: &quot;Stream-Rating Collections&quot;, &quot;SubFeature&quot;:&quot;Other Collections Card&quot;, &quot;EventParameter&quot;: {&quot;cardcriteriaid&quot;:15, &quot;cardcriterianame&quot;:&quot;Anti-Ragging Support&quot;, &quot;streamid&quot;:23, &quot;streamname&quot;:&quot;Engineering&quot;, &quot;url&quot;:&quot;/top-rated-colleges/engineering/anti-ragging-support/&quot;}, &quot;EventData&quot;:{&quot;currentstreamid&quot;:23,&quot;currentstreamname&quot;:&quot;Engineering&quot;, &quot;currentcriteriaid&quot;:12, &quot;currentcriterianame&quot;:&quot;Faculty&quot;}, &quot;EventMode&quot;:&quot;Action&quot;, &quot;Applicable&quot;:&quot;Both&quot;}"
								redirection="true"
								href="specification.jsp?sub=library">
								<div class="parameter-image" lazy-img-container=""
									lazy-img="images/library.jpg"
									style="background: url(images/library.jpg) center center/cover no-repeat;">
								</div>
								<div class="image-overlay"></div>
								<h1 class="ng-binding">Library</h1>
							</a></other-rating-card>
						</div>
						<!-- end ngRepeat: otherRating in otherRatingList -->
						
						
						<div class="col-md-4 rating-criteria ng-scope"
							ng-repeat="otherRating in otherRatingList">
							<other-rating-card field-id="collectionsListData[0].fieldid"
								field-name="collectionsListData[0].fieldname"
								rating-id="collectionsListData[0].ratingid"
								rating-name="collectionsListData[0].ratingname"
								other-rating-data="otherRating" class="ng-isolate-scope">
							<a class="collection-container"
								ng-href="/top-rated-colleges/engineering/gender-safety/"
								click-tracker="{ &quot;location&quot;: &quot;Bottom&quot;, &quot;EventType&quot;: &quot;Navigation&quot;, &quot;Module&quot;:&quot;Top Rated&quot;, &quot;Feature&quot;: &quot;Stream-Rating Collections&quot;, &quot;SubFeature&quot;:&quot;Other Collections Card&quot;, &quot;EventParameter&quot;: {&quot;cardcriteriaid&quot;:16, &quot;cardcriterianame&quot;:&quot;Gender Safety&quot;, &quot;streamid&quot;:23, &quot;streamname&quot;:&quot;Engineering&quot;, &quot;url&quot;:&quot;/top-rated-colleges/engineering/gender-safety/&quot;}, &quot;EventData&quot;:{&quot;currentstreamid&quot;:23,&quot;currentstreamname&quot;:&quot;Engineering&quot;, &quot;currentcriteriaid&quot;:12, &quot;currentcriterianame&quot;:&quot;Faculty&quot;}, &quot;EventMode&quot;:&quot;Action&quot;, &quot;Applicable&quot;:&quot;Both&quot;}"
								redirection="true"
								href="specification.jsp?sub=other">
								<div class="parameter-image" lazy-img-container=""
									lazy-img="other.jpg"
									style="background: url(images/other.jpg) center center/cover no-repeat;">
								</div>
								<div class="image-overlay"></div>
								<h1 class="ng-binding">Overall</h1>
							</a></other-rating-card>
						</div>
						<!-- end ngRepeat: otherRating in otherRatingList -->
						
						<div class="col-md-4 rating-criteria ng-scope"
							ng-repeat="otherRating in otherRatingList">
							<other-rating-card field-id="collectionsListData[0].fieldid"
								field-name="collectionsListData[0].fieldname"
								rating-id="collectionsListData[0].ratingid"
								rating-name="collectionsListData[0].ratingname"
								other-rating-data="otherRating" class="ng-isolate-scope">
							<a class="collection-container"
								ng-href="/top-rated-colleges/engineering/peer-support/"
								click-tracker="{ &quot;location&quot;: &quot;Bottom&quot;, &quot;EventType&quot;: &quot;Navigation&quot;, &quot;Module&quot;:&quot;Top Rated&quot;, &quot;Feature&quot;: &quot;Stream-Rating Collections&quot;, &quot;SubFeature&quot;:&quot;Other Collections Card&quot;, &quot;EventParameter&quot;: {&quot;cardcriteriaid&quot;:14, &quot;cardcriterianame&quot;:&quot;Peer Support&quot;, &quot;streamid&quot;:23, &quot;streamname&quot;:&quot;Engineering&quot;, &quot;url&quot;:&quot;/top-rated-colleges/engineering/peer-support/&quot;}, &quot;EventData&quot;:{&quot;currentstreamid&quot;:23,&quot;currentstreamname&quot;:&quot;Engineering&quot;, &quot;currentcriteriaid&quot;:12, &quot;currentcriterianame&quot;:&quot;Faculty&quot;}, &quot;EventMode&quot;:&quot;Action&quot;, &quot;Applicable&quot;:&quot;Both&quot;}"
								redirection="true"
								href="specification.jsp?sub=attendence">
								<div class="parameter-image" lazy-img-container=""
									lazy-img="images/attendence.jpg"
									style="background: url(images/attendence.jpg) center center/cover no-repeat;">
								</div>
								<div class="image-overlay"></div>
								<h1 class="ng-binding">Attendence</h1>
							</a></other-rating-card>
						</div>
						<!-- end ngRepeat: otherRating in otherRatingList -->
						
						
						<div class="col-md-4 rating-criteria ng-scope"
							ng-repeat="otherRating in otherRatingList">
							<other-rating-card field-id="collectionsListData[0].fieldid"
								field-name="collectionsListData[0].fieldname"
								rating-id="collectionsListData[0].ratingid"
								rating-name="collectionsListData[0].ratingname"
								other-rating-data="otherRating" class="ng-isolate-scope">
							<a class="collection-container"
								ng-href="/top-rated-colleges/engineering/anti-ragging-support/"
								click-tracker="{ &quot;location&quot;: &quot;Bottom&quot;, &quot;EventType&quot;: &quot;Navigation&quot;, &quot;Module&quot;:&quot;Top Rated&quot;, &quot;Feature&quot;: &quot;Stream-Rating Collections&quot;, &quot;SubFeature&quot;:&quot;Other Collections Card&quot;, &quot;EventParameter&quot;: {&quot;cardcriteriaid&quot;:15, &quot;cardcriterianame&quot;:&quot;Anti-Ragging Support&quot;, &quot;streamid&quot;:23, &quot;streamname&quot;:&quot;Engineering&quot;, &quot;url&quot;:&quot;/top-rated-colleges/engineering/anti-ragging-support/&quot;}, &quot;EventData&quot;:{&quot;currentstreamid&quot;:23,&quot;currentstreamname&quot;:&quot;Engineering&quot;, &quot;currentcriteriaid&quot;:12, &quot;currentcriterianame&quot;:&quot;Faculty&quot;}, &quot;EventMode&quot;:&quot;Action&quot;, &quot;Applicable&quot;:&quot;Both&quot;}"
								redirection="true"
								href="specification.jsp?sub=infrastructure">
								<div class="parameter-image" lazy-img-container=""
									lazy-img="images/infrastructure.jpg"
									style="background: url(images/infrastructure.jpg) center center/cover no-repeat;">
								</div>
								<div class="image-overlay"></div>
								<h1 class="ng-binding">Infrastructure</h1>
							</a></other-rating-card>
						</div>
						<!-- end ngRepeat: otherRating in otherRatingList -->
						
						
						<div class="col-md-4 rating-criteria ng-scope"
							ng-repeat="otherRating in otherRatingList">
							<other-rating-card field-id="collectionsListData[0].fieldid"
								field-name="collectionsListData[0].fieldname"
								rating-id="collectionsListData[0].ratingid"
								rating-name="collectionsListData[0].ratingname"
								other-rating-data="otherRating" class="ng-isolate-scope">
							<a class="collection-container"
								ng-href="/top-rated-colleges/engineering/gender-safety/"
								click-tracker="{ &quot;location&quot;: &quot;Bottom&quot;, &quot;EventType&quot;: &quot;Navigation&quot;, &quot;Module&quot;:&quot;Top Rated&quot;, &quot;Feature&quot;: &quot;Stream-Rating Collections&quot;, &quot;SubFeature&quot;:&quot;Other Collections Card&quot;, &quot;EventParameter&quot;: {&quot;cardcriteriaid&quot;:16, &quot;cardcriterianame&quot;:&quot;Gender Safety&quot;, &quot;streamid&quot;:23, &quot;streamname&quot;:&quot;Engineering&quot;, &quot;url&quot;:&quot;/top-rated-colleges/engineering/gender-safety/&quot;}, &quot;EventData&quot;:{&quot;currentstreamid&quot;:23,&quot;currentstreamname&quot;:&quot;Engineering&quot;, &quot;currentcriteriaid&quot;:12, &quot;currentcriterianame&quot;:&quot;Faculty&quot;}, &quot;EventMode&quot;:&quot;Action&quot;, &quot;Applicable&quot;:&quot;Both&quot;}"
								redirection="true"
								href="specification.jsp?sub=crowd">
								<div class="parameter-image" lazy-img-container=""
									lazy-img="crowd.jpg"
									style="background: url(images/crowd.jpg) center center/cover no-repeat;">
								</div>
								<div class="image-overlay"></div>
								<h1 class="ng-binding">College Crowd</h1>
							</a></other-rating-card>
						</div>
						<!-- end ngRepeat: otherRating in otherRatingList -->
						
						<div class="col-md-4 rating-criteria ng-scope"
							ng-repeat="otherRating in otherRatingList">
							<other-rating-card field-id="collectionsListData[0].fieldid"
								field-name="collectionsListData[0].fieldname"
								rating-id="collectionsListData[0].ratingid"
								rating-name="collectionsListData[0].ratingname"
								other-rating-data="otherRating" class="ng-isolate-scope">
							<a class="collection-container"
								ng-href="/top-rated-colleges/engineering/events-fests-etc/"
								click-tracker="{ &quot;location&quot;: &quot;Bottom&quot;, &quot;EventType&quot;: &quot;Navigation&quot;, &quot;Module&quot;:&quot;Top Rated&quot;, &quot;Feature&quot;: &quot;Stream-Rating Collections&quot;, &quot;SubFeature&quot;:&quot;Other Collections Card&quot;, &quot;EventParameter&quot;: {&quot;cardcriteriaid&quot;:17, &quot;cardcriterianame&quot;:&quot;Events, Fests etc&quot;, &quot;streamid&quot;:23, &quot;streamname&quot;:&quot;Engineering&quot;, &quot;url&quot;:&quot;/top-rated-colleges/engineering/events-fests-etc/&quot;}, &quot;EventData&quot;:{&quot;currentstreamid&quot;:23,&quot;currentstreamname&quot;:&quot;Engineering&quot;, &quot;currentcriteriaid&quot;:12, &quot;currentcriterianame&quot;:&quot;Faculty&quot;}, &quot;EventMode&quot;:&quot;Action&quot;, &quot;Applicable&quot;:&quot;Both&quot;}"
								redirection="true"
								href="specification.jsp?sub=canteen">
								<div class="parameter-image" lazy-img-container=""
									lazy-img="images/canteen.jpg"
									style="background: url(images/canteen.jpg) center center/cover no-repeat;">
								</div>
								<div class="image-overlay"></div>
								<h1 class="ng-binding">Canteem</h1>
							</a></other-rating-card>
						</div>
						<!-- end ngRepeat: otherRating in otherRatingList -->
					</div>
					<!-- end ngIf: isRatingSpecific -->
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>