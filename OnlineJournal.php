<?php
include("include/main.php");
include("include/header.php");
?>
    <style>
      .ebook {
        margin-bottom:50px;
      }
      .type {
        list-style-type: none;
      }

      .font {
        margin-top: 20px;
        color:black;
        font-size:30px;
        font-weight:bold;
      }
      .individualInside {
        justify-content: center;
        align-items: center;
        display: flex;
        flex-direction: row;
        position: relative;
        
        
      }
      .tata {
        box-shadow: 5px 25px 25px #F5F5F5;
        min-width: 230px;
        min-height:250px;
        text-align: center;
        cursor: pointer;
        margin-left:20px;
      }
      .bookCover {
        width: 125px;
        height: 150px;
      }
      .headBook {
        display: flex;
        justify-content: center;
        margin-bottom: 30px;
      }
      .btn-browse
      {
        min-width: 50px;
        background-color:black;
        border:none;
        color:white;
        
        
      }
      .btn-div
      {
        cursor:pointer;
        position: absolute;
        right: 130px;
        bottom:-10px;
       
      }
      .bookCover
      {
        margin-bottom:10px;
      }
    </style>
    <div class="ebook">
    
          <!-- Heading the publisher name and logo-->
          <div class="headBook">
            <span class="font">JOURNALS</span><br />
          </div>
          <!-- All the book covers -->
          <div class="individualInside">
            <!-- First Div for book-->
            <div class="tata" onclick="window.location.href='http://asmedigitalcollection.asme.org/journals.aspx';">
              <img class="bookCover" src="image/journal_asme.png" />
              <p>
                ASME
              </p>
            </div>
            <!-- //Second Div for book -->
            <div class="tata" onclick="window.location.href='https://dl.acm.org/';">
              <img class="bookCover" src="image/journal_Acm.png" />
              <p>ACM - DIGITAL LIBRARY</p>
            </div>
            <!-- Third Div for book-->
            <div class="tata" onclick="window.location.href='https://jgateplus.com/home/';">
              <img class="bookCover" src="image/journal_jgate.png" />
              <p>
               JGATE
              </p>
            </div>
            <!-- Fourth Div for book-->
            <div class="tata" onclick="window.location.href='https://www.jstor.org/';" >
                <img class="bookCover" src="image/journal_jstor.png" 
              />
              <p>JSTOR</p>
            </div>
            </div>
            



            

          <!-- Second Publisher-->
            <div class="headBook">
          </div>
          <!-- All the book covers -->
          <div class="individualInside">
            <!-- First Div for book-->
            <div class="tata" onclick="window.location.href='https://www.epw.in/frontpage?0=ip_login_no_cache%3D888fceae8513f4d43345e740b3124b61';">
              <img class="bookCover" src="image/journal_economic.png" />
              <p>
                Economic and <br> Political Weekly
              </p>
            </div>
            <!-- Second Div for book-->
            <div class="tata" onclick="window.location.href='https://ieeexplore.ieee.org/Xplore/home.jsp';">
              <img class="bookCover" src="image/journal_ieee.png" />
              <p>IEEE</p>
            </div>
            <!-- Third Div for book-->
            <div class="tata" onclick="window.location.href='https://www.sciencedirect.com/';">
              <img class="bookCover" src="image/journal_elsevier.png" />
              <p>
               Elsevier <br> Science Direct
              </p>
            </div>
            <!-- Fourth Div for book-->
            <div class="tata" onclick="window.location.href='https://ascelibrary.org/';" >
                <img class="bookCover" src="image/journal_asce.png" 
              />
              <p>ASCE</p>
            </div>
        </div>
        <div style="margin-top:10px"></div>
    </div>   
    
    <?php include("include/footerstrip.php"); ?>