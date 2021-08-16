                 #DengAI: Predicting Disease Spread
#Joining both tables together
SELECT * 
FROM sql_hr.dengue_labels_train lab
JOIN sql_hr.dengue_features_train fea
     ON lab.year = fea.year
     and lab.weekofyear = fea.weekofyear;
     
#week of year with the highest cases
SELECT max(total_cases) as highestinfection, lab.weekofyear
FROM sql_hr.dengue_labels_train lab
JOIN sql_hr.dengue_features_train fea
     ON lab.year = fea.year
     and lab.weekofyear = fea.weekofyear
GROUP BY lab.weekofyear
ORDER BY highestinfection DESC;
#Week 32 had the highest number of cases

#city with the highest cases
SELECT sum(total_cases) as large_cases, lab.city
FROM sql_hr.dengue_labels_train lab
JOIN sql_hr.dengue_features_train fea
     ON lab.year = fea.year
     and lab.weekofyear = fea.weekofyear
GROUP BY lab.city
ORDER BY large_cases DESC;
#SJ had the highest number of cases

#AVG temperature with the highest cases
SELECT sum(total_cases) as large_case, ROUND(station_avg_temp_c, 0) AS station_avg_temp
FROM sql_hr.dengue_labels_train lab
JOIN sql_hr.dengue_features_train fea
     ON lab.year = fea.year
     and lab.weekofyear = fea.weekofyear
GROUP BY station_avg_temp
ORDER BY large_case DESC;
#generally, the AVG temperature with the highest cases was 28.

  #MAX temperature with the highest cases
SELECT sum(total_cases) as large_case, ROUND(station_max_temp_c, 0) AS station_max_temp
FROM sql_hr.dengue_labels_train lab
JOIN sql_hr.dengue_features_train fea
     ON lab.year = fea.year
     and lab.weekofyear = fea.weekofyear
GROUP BY station_max_temp
ORDER BY large_case DESC;
#generally, the MAX temperature with the highest cases was 33.

 #MIN temperature with the highest cases
SELECT sum(total_cases) as large_case, ROUND(station_min_temp_c, 0) AS station_min_temp
FROM sql_hr.dengue_labels_train lab
JOIN sql_hr.dengue_features_train fea
     ON lab.year = fea.year
     and lab.weekofyear = fea.weekofyear
GROUP BY station_min_temp
ORDER BY large_case DESC;
#generally, the MIN temperature with the highest cases were 24 and 22.

 #Total Precipitation with the highest cases
SELECT sum(total_cases) as large_case, ROUND(station_precip_mm, 0) AS station_precip
FROM sql_hr.dengue_labels_train lab
JOIN sql_hr.dengue_features_train fea
     ON lab.year = fea.year
     and lab.weekofyear = fea.weekofyear
GROUP BY station_precip
ORDER BY large_case DESC;
#generally, the Total Precipitation with the highest cases were 0,4,20 and 6.

 #Diurnal temperature with the highest cases
SELECT sum(total_cases) as large_case, ROUND(station_diur_temp_rng_c, 0) AS station_diur_temp
FROM sql_hr.dengue_labels_train lab
JOIN sql_hr.dengue_features_train fea
     ON lab.year = fea.year
     and lab.weekofyear = fea.weekofyear
GROUP BY station_diur_temp
ORDER BY large_case DESC;
#generally,the Diurnal temperature with the highest cases were 7 and 6.

#Reanalysed Total precipitation with the highest cases
SELECT sum(total_cases) as large_case, ROUND(reanalysis_sat_precip_amt_mm, 0) AS reanalysis_sat_precip_amt
FROM sql_hr.dengue_labels_train lab
JOIN sql_hr.dengue_features_train fea
     ON lab.year = fea.year
     and lab.weekofyear = fea.weekofyear
GROUP BY reanalysis_sat_precip_amt
ORDER BY large_case DESC;
#generally,the Reanalysed Total precipitation temperature with the highest cases was 0.

#Mean dew point temperature with the highest cases
SELECT sum(total_cases) as large_case, ROUND(reanalysis_dew_point_temp_k, 0) AS reanalysis_dew_point_temp
FROM sql_hr.dengue_labels_train lab
JOIN sql_hr.dengue_features_train fea
     ON lab.year = fea.year
     and lab.weekofyear = fea.weekofyear
GROUP BY reanalysis_dew_point_temp
ORDER BY large_case DESC;
#generally,the Mean dew point temperature with the highest cases were 297 and 296.

#Mean air temperature with the highest cases
SELECT sum(total_cases) as large_case, ROUND(reanalysis_air_temp_k, 0) AS reanalysis_air_temp
FROM sql_hr.dengue_labels_train lab
JOIN sql_hr.dengue_features_train fea
     ON lab.year = fea.year
     and lab.weekofyear = fea.weekofyear
GROUP BY reanalysis_air_temp
ORDER BY large_case DESC;
#generally,the Mean air temperature with the highest cases were 300,298 and 299.

#Mean relative humidity with the highest cases
SELECT sum(total_cases) as large_case, ROUND(reanalysis_relative_humidity_percent, 0) AS reanalysis_relative_humidity
FROM sql_hr.dengue_labels_train lab
JOIN sql_hr.dengue_features_train fea
     ON lab.year = fea.year
     and lab.weekofyear = fea.weekofyear
GROUP BY reanalysis_relative_humidity
ORDER BY large_case DESC;
#generally,the Mean relative humidity with the highest cases was 79.

#Mean specific humidity with the highest cases
SELECT sum(total_cases) as large_case, ROUND(reanalysis_specific_humidity_g_per_kg, 0) AS reanalysis_specific_humidity
FROM sql_hr.dengue_labels_train lab
JOIN sql_hr.dengue_features_train fea
     ON lab.year = fea.year
     and lab.weekofyear = fea.weekofyear
GROUP BY reanalysis_specific_humidity
ORDER BY large_case DESC;
#generally,the Mean specific humidity with the highest cases was 18.

#Total precipitation per m2 with the highest cases
SELECT sum(total_cases) as large_case, ROUND(reanalysis_precip_amt_kg_per_m2, 0) AS reanalysis_precip_amt
FROM sql_hr.dengue_labels_train lab
JOIN sql_hr.dengue_features_train fea
     ON lab.year = fea.year
     and lab.weekofyear = fea.weekofyear
GROUP BY reanalysis_precip_amt
ORDER BY large_case DESC;
#generally,the Total precipitation per m2 with the highest cases was 12

#Maximum air temperature with the highest cases
SELECT sum(total_cases) as large_case, ROUND(reanalysis_max_air_temp_k, 0) AS reanalysis_max_air_temp
FROM sql_hr.dengue_labels_train lab
JOIN sql_hr.dengue_features_train fea
     ON lab.year = fea.year
     and lab.weekofyear = fea.weekofyear
GROUP BY reanalysis_max_air_temp
ORDER BY large_case DESC;
#generally,the Maximum air temperature with the highest cases were 302 and 303.

#Minimum air temperature with the highest cases
SELECT sum(total_cases) as large_case, ROUND(reanalysis_min_air_temp_k, 0) AS reanalysis_min_air_temp
FROM sql_hr.dengue_labels_train lab
JOIN sql_hr.dengue_features_train fea
     ON lab.year = fea.year
     and lab.weekofyear = fea.weekofyear
GROUP BY reanalysis_min_air_temp
ORDER BY large_case DESC;
#generally,the Minimum air temperature with the highest cases were 298 and 299.

#Average air temperature with the highest cases
SELECT sum(total_cases) as large_case, ROUND(reanalysis_avg_temp_k, 0) AS reanalysis_avg_temp
FROM sql_hr.dengue_labels_train lab
JOIN sql_hr.dengue_features_train fea
     ON lab.year = fea.year
     and lab.weekofyear = fea.weekofyear
GROUP BY reanalysis_avg_temp
ORDER BY large_case DESC;
#generally,the Average air temperature with the highest cases was 300.

#Diurnal temperature range with the highest cases
SELECT sum(total_cases) as large_case, ROUND(reanalysis_tdtr_k, 0) AS reanalysis_tdtr
FROM sql_hr.dengue_labels_train lab
JOIN sql_hr.dengue_features_train fea
     ON lab.year = fea.year
     and lab.weekofyear = fea.weekofyear
GROUP BY reanalysis_tdtr
ORDER BY large_case DESC;
#generally,the Diurnal temperature range with the highest cases were 2 and 3.

#Pixel southeast of city centroid with the highest cases
SELECT sum(total_cases) as large_case, ROUND(ndvi_se, 1) AS ndvi_se1
FROM sql_hr.dengue_labels_train lab
JOIN sql_hr.dengue_features_train fea
     ON lab.year = fea.year
     and lab.weekofyear = fea.weekofyear
GROUP BY ndvi_se1
ORDER BY large_case DESC;
#generally,the Diurnal temperature with the highest cases was 0.2

#Pixel southwest of city centroid with the highest cases
SELECT sum(total_cases) as large_case, ROUND(ndvi_sw, 1) AS ndvi_sw1
FROM sql_hr.dengue_labels_train lab
JOIN sql_hr.dengue_features_train fea
     ON lab.year = fea.year
     and lab.weekofyear = fea.weekofyear
GROUP BY ndvi_sw1
ORDER BY large_case DESC;
#generally,the Pixel southwest of city centroid with the highest cases was 0.2.

#Pixel northeast of city centroid with the highest cases
SELECT sum(total_cases) as large_case, ROUND(ndvi_ne, 1) AS ndvi_ne1
FROM sql_hr.dengue_labels_train lab
JOIN sql_hr.dengue_features_train fea
     ON lab.year = fea.year
     and lab.weekofyear = fea.weekofyear
GROUP BY ndvi_ne1
ORDER BY large_case DESC;
#generally,the Pixel northeast of city centroid with the highest cases was 0.1

#Pixel northwest of city centroid with the highest cases
SELECT sum(total_cases) as large_case, ROUND(ndvi_nw, 1) AS ndvi_nw1
FROM sql_hr.dengue_labels_train lab
JOIN sql_hr.dengue_features_train fea
     ON lab.year = fea.year
     and lab.weekofyear = fea.weekofyear
GROUP BY ndvi_nw1
ORDER BY large_case DESC;
#generally,the Pixel northwest of city centroid with the highest cases was 0.1.

