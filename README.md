# US General Social Survey (GSS): 1972-2014 Cumulative File

### v5.0.2-beta 

## Table of Contents
1. [Overview](#overview)
2. [About the GSS](#about)
2. [Provenance](#provenance)
3. [Organization](#organization)
4. [External Resources](#resources)
5. [SQL Limitations](#sql_limits)
6. [Packaging](#packaging)
7. [Contribute](#contribute)

<a name="overview"></a>
## Overview
This repository contains open data, metadata, and essential documentation for the [US General Social Survey 1972-2014 cumulative dataset](http://gss.norc.org). 

In addition to the files available here, we have published the dataset in [Google BigQuery](https://bigquery.cloud.google.com) and made it publically accessible at [https://bigquery.cloud.google.com/table/mtna-opendata:us_gss.gss7214_v5](https://bigquery.cloud.google.com/table/mtna-opendata:us_gss.gss7214_v5).

<a name="about"></a>
## About
The [General Social Survey (GSS)](https://en.wikipedia.org/wiki/General_Social_Survey) is a sociological survey used to collect information and keep a historical record of the concerns, experiences, attitudes, and practices of residents of the United States. Since 1972, the GSS has been monitoring societal change and studying the growing complexity of American society. It is one of the most influential studies in the social sciences.

<a name="provenance"></a>
## Provenance
The information was primarily retrieved from the [NORC GSS web site](http://gss.norc.org) and other available resources. The data is based on the [SPSS file version 5](http://gss.norc.org/get-the-data/spss) released March 24th, 2016. 

<a name="organization"></a>
## Organization

The repository content is organized as follows:

* **/data**: Data in open text format along with scripts/syntax for reading in popular analytical packages
* **/sql**: Data in SQL friendly text format along with SQL scripts for generating the database schema and loading the data in common SQL servers and other engines. Includes dimension tables for categorical variables code & value labels lookups.
* **/metadata**: metadata in standard formats and descriptive statistics
* **/docs**: core documentation generated from the metadata or retrieved from the source web sites

Note that data files have been compressed to preserve disk space and minimize network transfer time/bandwidth.

```
├── LICENSE
├── README.md
├── data
│   ├── GSS7214.csv.zip → Data in CSV format 
│   ├── GSS7214.dct → Stata setup script (data dictionary)
│   ├── GSS7214.ddl → SDA setup script
│   ├── GSS7214.do  → Stata setup script (code)
│   ├── GSS7214.fixed.dat.zip  → Data in fixed text format
│   ├── GSS7214.nb → Wolfram 
│   ├── GSS7214.r → R setup script
│   ├── GSS7214.sas → SAS setup script
│   ├── GSS7214.sps → SPSS setup script 
│   ├── GSS7214.sts → Stat/Transfer setup script
│   ├── GSS7214.top10.csv → Data in CSV format (first 10 records)
│   └── spss
│       └── GSS7214_R5.sav.zip → Original SPSS file
├── docs
│   ├── GSS7214.ddi25.xml.pdf → PDF Codebook generated from DDI 2.5 XML
│   ├── GSS_Codebook.pdf → PDF Codebook from NORC
│   └── Release\ Notes\ 7214.pdf → Release notes from NORC
├── metadata
│   ├── GSS7214.ddi25.xml.zip → DDI-Codebook v2.5 XML
│   ├── GSS7214.ddi31.rp.xml.zip → DDI-Lifecycle v3.1 XML
│   ├── GSS7214.ddi32.rp.xml.zip → DDI-Lifecycle v3.2 XML
│   ├── GSS7214.freqs.csv → Frequencies
│   ├── GSS7214.sss20.xml.zip → Triple-S 2.0 XML
│   └── GSS7214.stats.csv → Summary statistics
└── sql
    ├── GSS7214.bq → Schema for Google BigQuery
    ├── GSS7214.fusion.json → Schema for Google Fusion Table
    ├── GSS7214.hsql.sql → SQL script for HyperSQL
    ├── GSS7214.monet.sql → SQL script for MonetDB
    ├── GSS7214.mysql.sql → SQL script for MySql
    ├── GSS7214.oracle.sql → SQL script for Oracle
    ├── GSS7214.postgresql.sql → SQL script for PostgreSQL
    ├── GSS7214.sql.1-6.zip → Data in CSV format (multiple tables)
    ├── GSS7214.sql.csv.zip → Data in CSV format (single table)
    └── GSS7214.vertica.sql → SQL script for Vertica
```

<a name="resources"></a>
## Additional Resources
Comprehensive documentation can be accessed on the [NORC GSS web site](http://gss.norc.org/Get-Documentation). This includes codebook, questionnaires, technical documentation, bibliographies, and more. 

Other official GSS repositories include [ICPSR](http://www.icpsr.umich.edu/icpsrweb/ICPSR/studies/36319) and the [ROPER Center](http://ropercenter.cornell.edu/general-social-survey/).

<a name="sql_limits"></a>
## SQL Limitations
Given the large number of variables in this survey (5500+), most SQL servers are unable to store the entire dataset in a single physical table. This is due to limits in SQL engines on the maximum number of columns per table (see [https://goo.gl/639Rju](https://goo.gl/639Rju)). 

As a workaround, we spread the data across multiple physical tables and create an overarching view combining them based on generated record key. Note that since for Microsoft SQL Server the limitation extends to views, this particular engine cannot be used with this data product.

To avoid this problem, we recommend using engines that do not carry such limitation, like the open source and versatile [MonetDB](http://www.monetdb.org) (which comes with numerous attractive features).

<a name="packaging"></a>
## Packaging
We have packaged this data product in accordance to our open data vision and principles, which aims at maximizing usability by (1) liberating data from proprietary, (2) capturing knowledge around the data in compliance with international best practices and metadata standards, and (3) facilitating immediate reuse in popular data management environments. See our [Open Data Packaging Services](http://www.mtna.us/odps) description for further information.

The following steps have been taken:

* Collected data/metadata from producer and other relevant sources
* Used [SledgeHammer](http://www.mtna.us/sledgehammer) to extract core data and metadata from original SPSS file, compute descriptive statistics, and generate script/programs
* Used [Caelum](http://www.mtna.us/caelum) to generate the PDF codebook by applying a XLST from the DDI 2.5 XML metadata

<a name="contribute"></a>
## Contribute
Putting this data product together and maintaining the repository takes time and resources. We appreciate your support in any shape or form, in particular:

* Let us know is you find any discrepancy or have suggestions towards enhancing the content or quality
* Donations are appreciated and can be made through [PayPal](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=GKAYVJSBLN92E)
* Contact us if you would like to fund this work and optionally be credited as a sponsor

## License
This work is licensed under the [Creative Commons CC0 1.0 Universal License](http://creativecommons.org/publicdomain/zero/1.0/). Users are advised to check licensing conditions for underlying materials with respective custodians. In particular, see the [GSS Terms and Conditions](http://gss.norc.org/terms-and-conditions) for citation requirements. 
