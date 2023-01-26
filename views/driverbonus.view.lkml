view: driverbonus {
  sql_table_name: "CC"."DRIVERBONUS"
    ;;

  dimension: adj_amount {
    type: number
    sql: ${TABLE}."ADJ_AMOUNT" ;;
  }

  dimension: amt_1 {
    type: number
    sql: ${TABLE}."AMT_1" ;;
  }

  dimension: archive {
    type: number
    sql: ${TABLE}."ARCHIVE" ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}."CATEGORY" ;;
  }

  dimension: class_desc {
    type: string
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
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: ds_key_dm_drkey {
    type: string
    sql: ${TABLE}."DS_KEY_DM_DRKEY" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: num_1 {
    type: number
    sql: ${TABLE}."NUM_1" ;;
  }

  dimension: pay_period {
    type: string
    sql: ${TABLE}."PAY_PERIOD" ;;
  }

  dimension: rn {
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
