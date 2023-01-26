connection: "db"

# include all the views
include: "/views/**/*.view"

named_value_format: gbp_format {
  value_format: "#,##0.00"
}


datagroup: driver_bonuses_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hour"
}

persist_with: driver_bonuses_default_datagroup

explore: driverbonus {
  label: "Driver Bonus Reporting"
  persist_with: driver_bonuses_default_datagroup
  group_label: "CitySprint"
}

access_grant: citysprint_access {
  user_attribute: citysprint_explore
  allowed_values: ["yes"]

}
