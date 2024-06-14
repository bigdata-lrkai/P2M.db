<%-- 
    Document   : header
    Created on : 2024-5-6, 9:06:02
    Author     : Yuriw
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header>
        <div class="navbar-wrapper">
            <div class="container-fluid">
                <nav class="navbar navbar-fixed-top">
                    <div class="container" style="height:80px;margin-top: 20px;">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="index.jsp" style="margin-top:5px;">
                                <div style="display: flex;align-items: center;">
                                   <svg t="1715599447980" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="1954" width="40" height="40"><path d="M725.333333 85.333333v149.333334a213.333333 213.333333 0 0 1-131.285333 196.906666l-196.906667 82.069334A298.666667 298.666667 0 0 0 213.333333 789.333333v149.333334h85.333334v-149.333334a213.333333 213.333333 0 0 1 131.285333-196.906666l196.906667-82.069334A298.666667 298.666667 0 0 0 810.666667 234.666667V85.333333h-85.333334z" fill="#13227a" p-id="1955"></path><path d="M384 213.333333h256v85.333334H384v-85.333334zM384 725.333333h256v85.333334H384v-85.333334zM298.666667 128V85.333333h-85.333334v149.333334c0 96.96 46.890667 186.282667 123.136 241.664l61.418667-61.397334A213.354667 213.354667 0 0 1 298.666667 234.666667V128z m388.864 419.669333l-61.418667 61.397334A213.354667 213.354667 0 0 1 725.333333 789.333333v149.333334h85.333334v-149.333334c0-96.96-46.890667-186.282667-123.136-241.664z" fill="#13227a" p-id="1956"></path></svg>
                                    <h1 style="margin-top:5px;color: #306998;">P2M.db</h1>
                                </div>
                            </a>
                        </div>
                        <div id="navbar" class="navbar-collapse collapse">
		    <ul class="nav navbar-nav">
                        <li id="home"><a href="index.jsp" style="font-size:18px;">Home</a></li> 
			<li class="dropdown" id="tools"><a href="tools.jsp" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="font-size:18px;">Tools<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="tools.jsp" >All Tools</a></li>
                                <li><a href="tools.jsp#Single" >scRNA-seq Data Tools</a></li>
<!--                                <li><a href="dc.jsp">Data Characteristics</a></li>
                                <li><a href="ccc.jsp">Cell Cluster and Celltype</a></li>
                                <li><a href="de.jsp">Differential Gene Expression</a></li>
                                <li><a href="fc.jsp">Functional Characteristics</a></li>
                                <li><a href="ci.jsp">Cell Interaction Characteristics</a></li>
                                <li><a href="gc.jsp">Cell Similarity</a></li>
                                <li><a href="tc.jsp">Cell Trajectory Analysis</a></li>
                                <li><a href="cs.jsp">Cell Functional State</a></li>-->
                                <li><a href="tools.jsp#Bulk">Bulk Data Tools</a></li>
<!--                            <li><a href="bde.jsp">Differential Gene Expression</a></li>
                                <li><a href="bfc.jsp">Functional Characteristics</a></li>
                                <li><a href="ppi.jsp">Protein-protein interaction</a></li>
                                <li><a href="imu.jsp">Immune Infiltration analysis</a></li>
                                <li><a href="survival.jsp">Survival Analysis</a></li>                                -->
                            </ul>
                        </li>	
                        <li id="statistics"><a href="statisticsindex.jsp" style="font-size:18px;" >Statistics</a></li>
                        <li id="download"><a href="download.jsp" style="font-size:18px;" >Download</a></li>
                        <li id="help"><a href="help.jsp" style="font-size:18px;">Help</a></li>
                    </ul>    
                        </div>
                    </div>
                </nav>
            </div>
</div>
</header>