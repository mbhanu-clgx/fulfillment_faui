view: jobschedule {
  sql_table_name: public.jobschedule ;;

  dimension: addedbyuser {
    type: string
    sql: ${TABLE}.addedbyuser ;;
  }

  dimension: envtype {
    type: string
    sql: ${TABLE}.envtype ;;
  }

  dimension: extractname {
    type: string
    sql: ${TABLE}.extractname ;;
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

  dimension: runtimeid {
    type: number
    value_format_name: id
    sql: ${TABLE}.runtimeid ;;
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
    drill_fields: [extractname]
  }
}
