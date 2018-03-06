CREATE DATABASE /*!32312 IF NOT EXISTS*/ `xl_algorithms` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xl_algorithms`;

--
-- Table structure for table `pxlt_table`
--

DROP TABLE IF EXISTS `pxlt_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pxlt_table` (
  `pmid` varchar(50) NOT NULL,
  `tool_name` varchar(50) DEFAULT NULL,
  `tool_type` varchar(50) NOT NULL,
  `interface` varchar(100) NOT NULL,
  `published_year` varchar(50) NOT NULL,
  `scoring_fun` varchar(100) DEFAULT NULL,
  `msleavable` varchar(100) NOT NULL,
  `labeling` varchar(100) NOT NULL,
  `decoy` varchar(50) DEFAULT NULL,
  `dev_language` varchar(50) NOT NULL,
  `availability` varchar(50) DEFAULT NULL,
  `web_address` varchar(100) NOT NULL,
  PRIMARY KEY (`PMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pxlt_table`
--

LOCK TABLES `pxlt_table` WRITE;
/*!40000 ALTER TABLE `pxlt_table` DISABLE KEYS */;
INSERT INTO `pxlt_table` VALUES ('11701329','GPMAW','Analysis, Visualization','Web Interface','November 2001','   -','   -','   -','   -','   -','Licensed','http://www.gpmaw.com/html/gpmaw.html'),('16026606','CLPM','Visual+Analysis','','July 2005','based on MASCOT','cleavable, uncleavable','labeled','decoy','C++','Free','Cannot be Accessible'),('16403016','NA','type','','December 2005','   -','cleavable, non-cleavable','   -','   -','   -','Free',' not accessible'),('16579592 ','ProCrosslink','   -','','March 2006','    -',' non-cleavable','  180','   -','   -','   -','No Link'),('18947195','Popitam','Not specific for XL','','October 2008','Based on Graph Matching','-','-','-','-','-','Page Removed'),('19235167/18072732','MassMatrix','   -','','March 2009/2007','Probabilistic Scoring','non-cleavable','    -','Reverse','    -','Licensed',' http://www.massmatrix.net/'),('20886857','Blinks','Command Line','','October 2010','   -','MS Cleavable','   ','Reverse','    -','Free','http://brucelab.gs.washington.edu/software.html'),('21175198','XlinkIdentifier','Analysis','','March 2011','Dot Product','non-cleavable','no ','Reverse','C++','Free','http://www.du-lab.org/software.html'),('22038510','StavroX','XL Identifier','GUI','January 2012','Non Probabilistic','non-cleavable','  -','Reverse + Shuffle','Java','Free','Manual_pdf'),('22723907','FindX',' Identification','','June 2012','ScoringFun','no','Labeled','  -','   -','Upon Request','http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0038927'),('22772728','PLink','Analysis','CMD','September 2012','ScoringFun','no','yes/not necessary','Reve for FDR','C/C++','Upon Request','http://pfind.ict.ac.cn/'),('23541715','XiQ','CMD Analysis','','August 2013','  -','NA','Yes','No','C++','Free','http://129.215.14.65/xiq/'),('24010795','Hekate','Visual+Analysis','','September 2013','Based on Andromeda','No','Labeled Data','Reverse','Perl+SQL','Free','http://andrewholding.com/research/hekate/'),('24177721','AnchorMS','Visual+Analysis','','April 2013','  -',' No','   -','Reverse','Python + PHP','Free','cbio.ufs.ac.za/AnchorMS'),('24335475','ProteinProspector','Visual+Analysis','','February 2014','discriminant probability-based','Yes','   -','  -','  -','Licensed','http://prospector2.ucsf.edu/prospector/cgi-bin/msform.cgi'),('24356771','XQuest/XProphet','CMD+Analysis','','January 2014','ScoringFun','  -*yes','yes/not necessary','Reverse','Perl','Free','http://proteomics.ethz.ch/cgi-bin/xquest2_cgi/index.cgi'),('25261217','MeroX','Visual+Analysis','','January 2015','Seq. Database','Yes',' No','Reverse','Java','Free','http://www.stavrox.com/'),('25350700','XLPM','Visualizer+Analysis','','October 2015','based on the proportion of matched b- and y-ions','yes-for enzyme','labeled, N-labeled','use decoy (unable to identify)','Perl','Free','http://binf-app.host.ualr.edu/~mihir/cgi-bin/xlpm.cgi'),('25501944','DXMSMS',' -','','December 2014',' -',' -',' -',' -',' -','Licensed','No resource found'),('25638023','SIM_XL','Visual+Analysis','GUI','November 2015','Dynamic cut of score+Manual assessment','No','yes/not necessary','* which one?','C++','Free','http://patternlabforproteomics.org/sim-xl/'),('25648531','XiNet','Visualization','','April 2005','  -','NA','No','No','HTML5','Free','https://github.com/colin-combe/crosslink-viewer or http://crosslinkviewer.org/'),('25661704','XlinkAnalyzer','Post Link analyzer','','March 2015','NA','NA','No','No','python','Free','http://www.beck.embl.de/XlinkAnalyzer.html'),('25664544','PLink-SS','Disulfied Bridge Analysis',' -','April 2015','pLink for disulfide',' -',' -','-','C/C++','Licensed','http://pfind.ict.ac.cn/software/pLink/2014/pLink-SS.html'),('25788624','Cross_Finder','identification','','June 2015','Peptide Mass Match','No',' No',' -','Matlab','Free','http://bioinformatics.oxfordjournals.org/content/31/12/2043/suppl/DC1'),('25812259','Kojak','Identification XL','CMD','May , 2015','Cross Correlation','No','Not necessary','Reverse','C++','Free','http://www.kojak-ms.org/'),('25956653','XVis','Visualizer','','July 2015','-','NA','-','-','PHP','Free','http://xvis.genzentrum.lmu.de/'),('26414014','XlinkX','XL Identifier','GUI, Running from R code','March 2016','Prod. Ion matching + Probability Scoring','cleavable',' -','yes *not known type','R','Free','https://xlinkx.hecklab.com/'),('27068484','XLSearch','Analysis','','June 2016','Probabilistic',' No',' No','Reverse','Python','Free','https://github.com/COL-IU/XLSearch'),('27111507','XL_MOD','XL- Modeling tool','','June 2016',' -','NA','No','No','language','Free','http://aria.pasteur.fr/supplementary-data/x-links'),('27206479','ECL','Analysis','CMD','May 2016','ScoringFun','Cleabable','labeled','no decoy','Java+Python','Free','Manual_pdf'),('27642655','Xilmass','Analysis+Visual','','October 2016','ScoringFun','non-cleavable','labeled','Reverse','Java','Free','Manual_pdf'),('PMC3977190','MXDB','CMD Analysis','','April 2014','ScoringFun','Cleavage','labeled','Reverse','Java','Free','Manual_pdf'),('PMID','MassAI','Visual+Analysis','GUI','March 2016','ScoringFun','Cleavable','labling','Decoy','Java','Free','Manual_pdf');
/*!40000 ALTER TABLE `pxlt_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
