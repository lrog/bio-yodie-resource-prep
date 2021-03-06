
--addMRCOC_master.sql

--Copyright (c) 1995-2016, The University of Sheffield. See the file
--COPYRIGHT.txt in the software or at
--http://gate.ac.uk/gate/COPYRIGHT.txt

--This file is part of Bio-YODIE (see 
--https://gate.ac.uk/applications/bio-yodie.html), and is free 
--software, licenced under the GNU Affero General Public License
--Version 3, 19 November 2007

--A copy of this licence is included in the distribution in the file
--LICENSE-AGPL3.html, and is also available at
--http://www.gnu.org/licenses/agpl-3.0-standalone.html

--G. Gorrell, 26 September 2016


DROP TABLE IF EXISTS MRCOC2000SELECTED;
CREATE TABLE MRCOC2000SELECTED (
    DUI1 char(10),
    CUI1 char(10),
    DUI2 char(10),
    CUI2 char(10),
    Freq int,
    StarFreq int,
    Year char(4),
    TimeFrame char(3),
    numNoSH int,
    StarnumNoSH int,
    numSH int,
    BothMain char(2),
    Star1OnlyFreq int,
    Star2OnlyFreq int,
    SH1OnlyFreq int,
    SH2OnlyFreq int
);

INSERT INTO MRCOC2000SELECTED SELECT * FROM CSVREAD(
'###SRCS/mrcoc/summary_CoOccurs_2016_since2000.txt', null, 'fieldSeparator=|');

CREATE INDEX X_MRCOC2000SELECTED_CUI1 ON MRCOC2000SELECTED(CUI1);
CREATE INDEX X_MRCOC2000SELECTED_CUI2 ON MRCOC2000SELECTED(CUI2);

