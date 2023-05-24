<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
    <html >
        <head>
            <title>cv Zakaria</title>
            <meta charset="UTF-8"></meta>
            <meta name="viewport" content="width=device-width, initial-scale=1"></meta>
            <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"></link>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" ></link>
            
        </head>
        <body>
            
            <div id="inner-nav"></div>
            <div id="container">
                <div id="profile">
                    <div id="image">
                        <img id="profile-photo" src="{cv/entete/profile}" alt="Profile-Image"></img>
                            
                    </div>
                    <p id="name"><xsl:value-of select="cv/entete/prenom "/> <xsl:value-of select="cv/entete/nom"/> <br></br><span id="email"><xsl:value-of select="cv/entete/mail"/></span></p>
                    <p id="designation">Eleve ingénieur<br></br><span id="college">Filière: génie informatique à l'école nationale des sciences appliquées</span></p>
                     <hr width="100%"></hr>
                    <p id="year-graduation"><strong><i class="fa fa-phone"></i> Télephone</strong><br></br><xsl:value-of select="cv/entete/telephone"/></p>
                    <p id="education"><strong><i class="fa fa-map"></i> Adresse</strong><br></br><xsl:value-of select="cv/entete/nationalite"/></p>  
                    <br></br>
                    <p class="tags" style="color:darkkhaki;"><i class="fa fa-laptop"></i> Compétences</p>
                    <xsl:for-each select="cv/competences/competence">
                        <p class="tags"><xsl:value-of select="titre"/><br></br><span>| <span><xsl:value-of select="description"/></span></span></p>
                    </xsl:for-each>
                    <p class="tags" id="" style="color:darkkhaki;"><i class="fa fa-globe"></i> Langues</p>
                        <xsl:for-each select="cv/langues/langue">
                            <div class="info-section link">
                                <p><xsl:value-of select="intitule"/>:  <xsl:value-of select="niveau"/></p>  
                            </div>
                        </xsl:for-each>
                    <p class="tags" style="color:darkkhaki;"><i class="fa fa-crosshairs"></i> Centres d’intérêt</p>
                        <xsl:for-each select="cv/loisirs/loisir">
                            <div class="info-section link">
                                <li><xsl:value-of select="."/></li>  
                            </div>
                        </xsl:for-each>
                  
                    
                </div>
                <div id="info-cards">
                    <div class="card">
                        <ul>
                            <p class="tags" style="color:darkkhaki;"><i class="fa fa-graduation-cap "></i> Projets Académiques</p>
                           
                            <xsl:for-each select="cv/stages/stage">
                                <li><p class="tags"><xsl:value-of select="titre"/><br></br><span> <xsl:value-of select="description"/> | <span><xsl:value-of select="date"/></span></span></p></li>
                            </xsl:for-each>
                        </ul>
                    </div>
                    
                    <div class="card">
                        
                        <ul>
                            <p class="tags" style="color:darkkhaki;"><i  class="fa fa-book"></i> Education</p>
                            <xsl:for-each select="cv/Formations/diplome">
                                <p class="tags"><xsl:value-of select="intitule"/><br></br><span>| <span><xsl:value-of select="annee"/></span></span></p>
                            </xsl:for-each>
                        </ul>
                    </div>
                   
                </div>
            </div>
        </body>
    </html>
    <style>
        html{
        font-family: 'Open Sans',sans-serif;
        background: whitesmoke;
        }
        a{
        text-decoration: none;
        color: black;
        }
        hr{
        background: grey;
        }
        #container{
        position: relative;
        display: flex;
        }
        #profile{
        flex: 15%;
        display: block;
        position: relative;
        margin: 5% 2% 0 10%;
        width: 100%;
        height: 100%;
        }
        #info-cards{
        flex: 55%;
        display: block;
        margin-top: 5%;
        margin-right: 10%;
        width: 100%;
        height: 100%;
        }
        #image{
        position: relative;
        overflow: hidden;
        }
        #image,#profile-photo{
        position: relative;
        width: 80px;
        height: 80px;
        border-radius: 10px;
        }
        #image > a{
        position: absolute;
        top:0;
        left:0;
        background: rgba(0,0,0,0.5) !important;
        height: 100%;
        width: 100%;
        display: none;
        }
        #image > a > i{
        -webkit-text-stroke: 1px #ffffffdd;
        padding: 40%;
        }
        #image:hover a{
        display: block;
        }
        #name{
        font-size: 23px !important;
        line-height: 20px !important;
        }
        #about,.card > ul > li{
        padding: 0 0 0 15px;
        position: relative;
        display: inline-block;
        width: 100%;
        }
        #about{
        font-size: 20px !important;
        padding: 0 !important;
        }
        #name, #about > p{
        font-weight: bolder;
        font-family: 'Open Sans', sans-serif;
        }
        #email{
        font-size: 15px !important;
        font-weight: bold !important;
        font-family: 'Cutive Mono',monospace;
        }
        #college,#email,#year-graduation,#education,#more-about,#telephone,#fax{
        color: #555;
        font-size: 13.5px;
        }
        strong,span{
        color: black;
        font-size: 16px;
        }
        #social-links,#about{
        display: inline-block;
        }
        #social-links{
        margin-bottom: 12px;
        }
        #social-links a{
        margin: 0 10px;
        }
        #edit-intro{
        display: block;
        color:#097bbf;
        font-family: 'Nunito', sans-serif;
        }
        .fab{
        font-size: 1.1em;
        }
        .fab,.fas{
        color: whitesmoke;
        }
        #about > a{
        top: 4px;
        right: 8px;
        }
        .edit{
        top: 19px;
        right: 10px;
        }
        #about > a, .edit{
        position: absolute;
        font-size: 15px !important;
        }
        .stroke-transparent {
        -webkit-text-stroke: 1px #000;
        -webkit-text-fill-color: transparent;
        }
        .blue{
        color: #097bbf !important;
        font-size: 13px;
        }
        .stroke-transparent-blue {
        -webkit-text-stroke: 1px #097bbf;
        -webkit-text-fill-color: transparent;
        }
        .card{
        box-shadow: 0 3px 10px 0 rgba(0,0,0,.1);
        overflow-x: hidden;
        margin-bottom: 30px;
        padding: 15px 30px 30px 30px;
        background-color: #fff;
        }
        .card > p{
        color: #0e141e;
        font-weight: bolder;
        font-size: 18px;
        line-height: 2;
        }
        .card > p > i{
        font-size: 18px;
        }
        .card > a{
        font-weight: 400;
        font-size: 15px;
        margin: 0;
        margin-left: 25px;
        padding: 0;
        border: 0;
        height: auto;
        background: transparent;
        color: #097bbf;
        outline: none;
        cursor: pointer;
        }
        .card > ul{
        list-style-type: none;
        }
        .tags{
        font-size: 17px;
        font-weight: bolder;
        }
        .tags ~ a{
        display: none !important;
        }
        .tags span{
        font-size: 12px;
        font-weight: normal;
        color: #0e141e;
        }
        .tags span span{
        color: #738f93;
        }
        @media screen and (max-width:1090px){
        #profile{
        margin-left: 5%;
        }
        }
        @media screen and (max-width:850px){
        #container{
        display: block;
        }
        #profile{
        width: 90%;
        }
        .card{
        margin: 0 5%;
        margin-bottom: 30px;
        }
        }
    </style>
    
    
    </xsl:template>
</xsl:stylesheet>