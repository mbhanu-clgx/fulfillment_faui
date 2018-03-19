view: schedularinputs {
  sql_table_name: public.schedularinputs ;;

  dimension: addedbyuser {
    type: string
    sql: ${TABLE}.addedbyuser ;;
  }

  dimension: deliveryemaillist {
    type: string
    sql: ${TABLE}.deliveryemaillist ;;
  }

  dimension: ftppassword {
    type: string
    sql: ${TABLE}.ftppassword ;;
  }

  dimension: ftpport {
    type: number
    sql: ${TABLE}.ftpport ;;
  }

  dimension: ftpsite {
    type: string
    sql: ${TABLE}.ftpsite ;;
  }

  dimension: ftpuserid {
    type: string
    sql: ${TABLE}.ftpuserid ;;
  }

  dimension_group: insertdt {
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
    sql: ${TABLE}.insertdt ;;
  }

  dimension: jobid {
    type: number
    value_format_name: id
    sql: ${TABLE}.jobid ;;
  }

  dimension: notificationemaildesignation {
    type: string
    sql: ${TABLE}.notificationemaildesignation ;;
  }

  dimension: notificationemaillist {
    type: string
    sql: ${TABLE}.notificationemaillist ;;
  }

  dimension_group: updatedt {
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
    sql: ${TABLE}.updatedt ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
