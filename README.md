# WgetDownload
How to download the data in NASA or NSIDC

Read me: This context mainly focus on how to download the scientific data from the NASA or  National Snow & Ice Data Center.

1.The first one is about MEaSUREs Northern Hemisphere Polar EASE-Grid 2.0 Daily 6 km Land Freeze/Thaw Status from AMSR-E and AMSR2, Version 1, which could be linked by the web(https://nsidc.org/data/nsidc-0728#)   AMSR_EAns2.sh
This data set consists of a Northern Hemisphere daily landscape Freeze/Thaw status at 6km resolution for the years 2002 to 2016derieved from observations acquired by the Japan Aerospace Exploration Agency’s(JAXA) Advanced Microwave Scanning Radiometer-Earth observing System(AMSR-E) and the Advanced Microwave Scanning Radiometer 2(AMSR2). More details can be check on that online.
The knowledge base of how to use the WGET to download data can be found in this link(https://nsidc.org/support/faq/what-options-are-available-bulk-downloading-data-https-earthdata-login-enabled). The first step is to authenticate the configuration on your local computer. Yet Mac can ignore it by adding the --http-user=[USERNAME] --http-password=[PASSWORD], or  --http-user=[USERNAME] --ask-password in the Wget line. The specific command of wget is as following:
a.Pay attentation: the password of earth data 
•	b.HPC and local Mac have different version of wget, so on HPC we should add double quotation marks for the data link, yet on Mac both can work very well.
c.Wget –version

wget --load-cookies ~/.urs_cookies --save-cookies ~/.urs_cookies --keep-session-cookies --no-check-certificate --auth-no-challenge=on -r --reject "index.html*" -np -e robots=off "https://daacdata.apps.nsidc.org/pub/DATASETS/nsidc0728_MEASURES_6km_freeze_thaw_v01/DAILY_GEOTIFF/" -P 

###hpc
/shared/homes/131630/SciData/Freeze_Thaw/AMSR_EandAMSR2
###local 
/Volumes/Macintosh2TBHD/Wenjie_Sci/SoilMoisture/Freeze_Thaw/AMSR_EandAMSR2/


2. Version 4, Daily Freeze/Thaw Status of the Landscape    SMMR.sh

This data set cover the global record of daily landscape freeze/thaw status, encompasses all land areas affected by seasonal freezing including the urban, snow-ice dominant, open water body dominant the barren land; freeze/thaw status is determined with a modified seasonal threshold algorithm,calibrated annually for all pixels using daily surface air temperature records. We should focus on the similar issues with item 1 and specific command is displayed below.
wget --load-cookies ~/.urs_cookies --save-cookies ~/.urs_cookies --keep-session-cookies --no-check-certificate --auth-no-challenge=on -r --reject "index.html*" -np -e robots=off "https://n5eil01u.ecs.nsidc.org/MEASURES/NSIDC-0477.003/" -P 

###hpc
/shared/homes/131630/SciData/Freeze_Thaw/SMMR
###local 


3.OCO2  (change it to your own account!!!)
(https://disc.sci.gsfc.nasa.gov/datasets/OCO2_L2_ABand_V8r/summary)
wget --user vicent --password Zwjiezky136 -i /Volumes/Macintosh2TBHD/Wenjie_Sci/GitHub/OCO-2/download/subset_OCO2_L2_ABand_V8r_20180420_084745.txt -P /Volumes/Macintosh2TBHD/Wenjie_Sci/SatelliteData/OCO2/Version8r	

This script is  a commen used method for most of the modis product:

wget --user vicent --password Zwjiezky136 -i /Volumes/Macintosh2TBHD/Wenjie_Sci/SatelliteData/MODIS11C3_MonthlyLST/C194001235-LPDAAC_ECS_data_urls.txt -P /Volumes/Macintosh2TBHD/Wenjie_Sci/SatelliteData/MODIS11C3_MonthlyLST/MOD11C3

wget --user vicent --password Zwjiezky136 -i /Volumes/Macintosh2TBHD/Wenjie_Sci/SatelliteData/MODIS11C3_MonthlyLST/C194001215-LPDAAC_ECS_data_urls.txt -P /Volumes/Macintosh2TBHD/Wenjie_Sci/SatelliteData/MODIS11C3_MonthlyLST/MYD11C3

