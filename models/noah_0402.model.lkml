connection: "noah_0402"

# include all the views
include: "/views/**/*.view"

datagroup: noah_0402_default_datagroup {
  #sql_trigger: SELECT MAX(dt) FROM bm_f_subway_card_dd;;
  #label: "ETL Date 추가됨"
  max_cache_age: "24 hour"
}

persist_with: noah_0402_default_datagroup

explore: bm_d_calender_dt {}

explore: bm_f_subway_passenger_dd {}

explore: bm_d_transfer_station {}

explore: bm_d_passenger_type_cd {}

explore: bm_d_time_range_cd {}

explore: bm_f_subway_card_dd {}
