view: qrtz_calendars {
  sql_table_name: public.qrtz_calendars ;;

  dimension: calendar {
    type: string
    sql: ${TABLE}.calendar ;;
  }

  dimension: calendar_name {
    type: string
    sql: ${TABLE}.calendar_name ;;
  }

  dimension: sched_name {
    type: string
    sql: ${TABLE}.sched_name ;;
  }

  measure: count {
    type: count
    drill_fields: [calendar_name, sched_name]
  }
}
