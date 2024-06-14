<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--调滚动位置的在jquery.navScrollSpy.js里-->
<style>
        .help-container{margin-top:10%;min-width: 1600px;}
        #nav{position:absolute; top:500px; left:20px;}
        ul,li{list-style-type:none;}
        .btn{background:white;width:160px; display:block; height:60px; line-height:40px; font-size:14px;line-height:20px;font-weight:normal; text-align:center; border:3px solid #1d4573; border-radius:3px; cursor:pointer;    -webkit-transition: background ease .5s, color ease .5s;}
        #nav li{margin-bottom:10px;}
        #nav li a{color:#191d40; text-decoration: none;font-weight: bold}
        #nav li.current a{background:#1d4573; color:#a8f843}
        .help-content{margin-left: 300px;margin-top: -9%;display:inline-block;}
        .help-content section{width:1500px; height:600px; margin-bottom:0px;}
        .content{display: inline;}
</style>
<div class="help">
    <div class="help-container">
        <ul id="nav" class="help-nav">
            <li class="current"><a class="btn" href="#c1">Cell Number<br> Distribution</a></li>
            <li><a class="btn" href="#c2">Cell Type<br> Distribution</a></li>
            <li><a class="btn" href="#c3">Frequency of DEGs</a></li>
            <li><a class="btn" href="#c4" style="font-size:13px;">Frequency of <br>Activated Pathways</a></li>
        </ul>
        <div class="help-content">
            <section id="c1">
                <h4 style="color:#181e3f;font-weight:bold;">Cell Number Distribution</h4>
                <div class="content">   
                    <div id="container-1_1" style="height:600px;width:700px; float: left; "></div>
                    <div id="container-1_2" style="height:600px;width:700px; float: right; "></div>
                </div>
            </section>
            <section id="c2" style="height:1300px;">
                <h4 style="color:#181e3f;font-weight:bold;margin-top: 3%;">Cell Type Distribution</h4>
                <div class="content">
                    <div id="container-2_1" style="height:600px;"></div>
                    <div id="container-2_2" style="height:600px;margin-top: 50px"></div>
                </div>
            </section>
            <section id="c3" style="height:1000px;">
                <h4 style="color:#181e3f;font-weight:bold;margin-top: 3%;">Frequency of DEGs</h4>
                <div class="content">
                    <div id="container-3_1" style="height:400px;margin-top: 20px;"></div>
                    <div id="container-3_2" style="height:400px;margin-top: 100px;"></div>
                </div>
            </section>
            <section id="c4" style="height:4200px;">
                <h4 style="color:#181e3f;font-weight:bold;margin-top: 3%;">Frequency of Activated Pathways</h4>
                <div class="content">
                    <div id="container-4_1" style="height:1000px;"></div>
                    <div id="container-4_2" style="height:1000px;margin-top: 50px;"></div>
                    <div id="container-4_3" style="height:1000px;margin-top: 50px;"></div>
                    <div id="container-4_4" style="height:1000px;margin-top: 50px;"></div>
                </div>
            </section>
        </div>
    </div>
</div>