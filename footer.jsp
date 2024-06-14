<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <footer>
	<div class="container"  style="margin-top:-30px;">
		<div class="row">
                    	<div class="col-lg-2">
					<a href="index.html">
                                        <div style="display: flex;align-items: center;margin-top: 5px;">
                                            <svg t="1715858516283" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="1687" width="32" height="32"><path d="M725.333333 85.333333v149.333334a213.333333 213.333333 0 0 1-131.285333 196.906666l-196.906667 82.069334A298.666667 298.666667 0 0 0 213.333333 789.333333v149.333334h85.333334v-149.333334a213.333333 213.333333 0 0 1 131.285333-196.906666l196.906667-82.069334A298.666667 298.666667 0 0 0 810.666667 234.666667V85.333333h-85.333334z" fill="#ffffff" p-id="1688"></path><path d="M384 213.333333h256v85.333334H384v-85.333334zM384 725.333333h256v85.333334H384v-85.333334zM298.666667 128V85.333333h-85.333334v149.333334c0 96.96 46.890667 186.282667 123.136 241.664l61.418667-61.397334A213.354667 213.354667 0 0 1 298.666667 234.666667V128z m388.864 419.669333l-61.418667 61.397334A213.354667 213.354667 0 0 1 725.333333 789.333333v149.333334h85.333334v-149.333334c0-96.96-46.890667-186.282667-123.136-241.664z" fill="#ffffff" p-id="1689"></path></svg>
                                            <h3 style="margin-top: 1px;">P2M.db</h3>
                                        </div>
                                        </a>
			</div>
                    	<div class="col-lg-3">
				<div class="widget">
					<h4 class="widgetheading">Single Data Tools</h4>
					<ul class="link-list">
                                            <li><a href="dc.jsp">Data Characteristics</a></li>
                                            <li><a href="ccc.jsp">Cell Cluster and Celltype</a></li>
                                            <li><a href="de.jsp">Differential Gene Expression</a></li>
                                            <li><a href="fc.jsp">Functional Characteristics</a></li>
                                            <li><a href="ci.jsp">Cell Interaction Characteristics</a></li>
                                            <li><a href="gc.jsp">Cell Similarity</a></li>
                                            <li><a href="tc.jsp">Cell Trajectory Analysis</a></li>
                                            <li><a href="cs.jsp">Cell Functional State</a></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="widget">
					<h4 class="widgetheading">Bulk Data Tools</h4>
					<ul class="link-list">
                                            <li><a href="bde.jsp">Differentially Expressed Genes</a></li>
                                            <li><a href="bfc.jsp">Functional Characteristics</a></li>
                                            <li><a href="ppi.jsp">Protein-protein interaction</a></li>
                                            <li><a href="imu.jsp">Immune Infiltration analysis</a></li>
                                            <li><a href="survival.jsp">Survival Analysis</a></li>
					</ul>
				</div>
			</div>
                    	<div class="col-lg-2">
				<div class="widget">
					<h4 class="widgetheading">Statistics</h4>
					<ul class="link-list">
						<li><a href="statistics.jsp">Single Data Statistics</a></li>
                                                <li><a href="statistics_bulk.jsp">Bulk Data Statistics</a></li>
					</ul>
				</div>
			</div>
			<div class="col-lg-2">
				<div class="widget">
					<h4 class="widgetheading">Download</h4>
					<ul class="link-list">
						<li><a href="download.jsp">Single Data Download</a></li>
						<li><a href="download.jsp?bulk=1">Bulk data Download</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div id="sub-footer" style="margin-top: -10px;">
		<div class="container">
                    <hr>
			<div class="row">
				<div class="col-lg-12">
					<div class="copyright">
                                            <h6 style="margin-top: -10px;">Copyright &copy; 2024.College of Bioinformatics Science and Technology, Harbin Medical University.</h6>
					</div>
				</div>
			</div>
		</div>
	</div>
    </footer>
<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
<!-- javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="js/custom.js"></script> 
<script>
$(document).ready(function() {
    var hash = window.location.hash;
    if (hash) {
        $('html, body').animate({
            scrollTop: $(hash).offset().top
        }, 1500); // 800 是动画持续时间，单位是毫秒
    }
});
</script>