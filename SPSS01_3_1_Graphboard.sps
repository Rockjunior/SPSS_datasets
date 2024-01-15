﻿* File:    SPSS01_3_1_Graphboard.sps
* Course:  SPSS01: SPSS: An introduction
* Chapter: 3: Basic graphics
* Section: 1: Graphboard templates
* Author:  Barton Poulson, datalab.cc, @bartonpoulson
* Date:    2016-09-08

* LOAD DATA *****************************************************************************

* You can navigate to the sample data folder and open the
* file "demo.sav." Or you can use one of the following 
* syntax commands, depending on your computer. If you're 
* using a different verson of SPSS, just change the number
* in the command to match your version.

* This format is for a Mac running SPSS 22.
GET 
  FILE='/Applications/IBM/SPSS/Statistics/22/Samples/English/demo.sav'.
DATASET NAME $data WINDOW=FRONT.
DATASET ACTIVATE $data.

* This format is for a Windows machine running SPSS 22.
GET 
  FILE='C:\Program Files\IBM\SPSS\Statistics\22\Samples\English\demo.sav'.
DATASET NAME $data WINDOW=FRONT.
DATASET ACTIVATE $data.

* Go to data window and check measurement scales for variables.

* BASIC CHARTS **************************************************************************

* We'll make the first chart on the first variable, age.
* This is the code generated by the graphboard command.
GGRAPH
  /GRAPHDATASET NAME="graphdataset"
    VARIABLES=age[LEVEL=scale] 
    MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=VIZTEMPLATE(NAME="Dot Plot"[LOCATION=LOCAL]
    MAPPING( "x"="age"[DATASET="graphdataset"]))
    VIZSTYLESHEET="Traditional"[LOCATION=LOCAL]
    LABEL='DOT PLOT: age'
    DEFAULTTEMPLATE=NO.

* This uses the age variable and makes a histogram with 
* a superimposed normal distribution.
GGRAPH
  /GRAPHDATASET NAME="graphdataset"
    VARIABLES=age[LEVEL=scale] 
    MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=VIZTEMPLATE(NAME="Histogram with Normal Distribution"[LOCATION=LOCAL]
    MAPPING( "x"="age"[DATASET="graphdataset"]))
    VIZSTYLESHEET="Traditional"[LOCATION=LOCAL]
    LABEL='HISTOGRAM WITH NORMAL DISTRIBUTION: age'
    DEFAULTTEMPLATE=NO.

* A bar chart of gender.
GGRAPH
  /GRAPHDATASET NAME="graphdataset"
    VARIABLES=gender[LEVEL=nominal] 
    MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=VIZTEMPLATE(NAME="Bar of Counts"[LOCATION=LOCAL]
    MAPPING( "categories"="gender"[DATASET="graphdataset"] "Summary"="count"))
    VIZSTYLESHEET="Traditional"[LOCATION=LOCAL]
    LABEL='BAR OF COUNTS: gender'
    DEFAULTTEMPLATE=NO.

* DETAILED CHARTS ***********************************************************************

* Dot plot of income, can modify display.
GGRAPH
  /GRAPHDATASET NAME="graphdataset"
    VARIABLES=income[LEVEL=scale] 
    MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=VIZTEMPLATE(NAME="Dot Plot"[LOCATION=LOCAL]
    MAPPING( "x"="income"[DATASET="graphdataset"]))
    VIZSTYLESHEET="Traditional"[LOCATION=LOCAL]
    LABEL='DOT PLOT: income'
    DEFAULTTEMPLATE=NO.

* Scatterplot of age and income with colors for point density.
GGRAPH
  /GRAPHDATASET NAME="graphdataset"
    VARIABLES=age[LEVEL=scale] income[LEVEL=scale] 
    MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=VIZTEMPLATE(NAME="Hex Binned Scatterplot"[LOCATION=LOCAL]
    MAPPING( "y"="income"[DATASET="graphdataset"] "x"="age"[DATASET="graphdataset"]))
    VIZSTYLESHEET="Traditional"[LOCATION=LOCAL]
    LABEL='HEX BINNED SCATTERPLOT: income-age'
    DEFAULTTEMPLATE=NO.

* SAVE FILES AND CLOSE WINDOWS **********************************************************
