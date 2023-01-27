view: driverbonus {
  sql_table_name: "CC"."DRIVERBONUS"
    ;;

  dimension: adj_amount {
    type: number
    sql: ${TABLE}."ADJ_AMOUNT" ;;
    value_format_name: gbp
  }

  dimension: amt_1 {
    type: number
    sql: ${TABLE}."AMT_1" ;;
    value_format_name: gbp
  }

  dimension: archive {
    type: string
    sql: ${TABLE}."ARCHIVE" ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}."CATEGORY" ;;
  }

  dimension: class_desc {
    type: string
    label: "Service Centre"
    sql: ${TABLE}."CLASS_DESC" ;;
  }

  dimension_group: date_of_payment {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."DATE_OF_PAYMENT" ;;
  }

  dimension: description {
    label: "Bonus Description"
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: ds_key_dm_drkey {
    label: "Callsign"
    type: string
    sql: ${TABLE}."DS_KEY_DM_DRKEY" ;;
  }

  dimension: name {
    label: "Driver Name"
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: num_1 {
    label: "User ID"
    type: string
    sql: ${TABLE}."NUM_1" ;;
  }

  dimension: pay_period {
    type: string
    sql: ${TABLE}."PAY_PERIOD" ;;
  }

  dimension: rn {
    hidden: yes
    type: number
    sql: ${TABLE}."RN" ;;
  }

  dimension: transaction_code {
    type: string
    sql: ${TABLE}."TRANSACTION_CODE" ;;
  }

  dimension: vehicle_type {
    type: string
    sql: ${TABLE}."VEHICLE_TYPE" ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }

  measure: sum {
    type: sum
    sql: ${TABLE}."AMT_1" ;;
  }

}
