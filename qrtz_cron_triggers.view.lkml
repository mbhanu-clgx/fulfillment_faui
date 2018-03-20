view: qrtz_cron_triggers {
  sql_table_name: public.qrtz_cron_triggers ;;

  dimension: cron_expression {
    type: string
    sql: ${TABLE}.cron_expression ;;
  }

  dimension: sched_name {
    type: string
    sql: ${TABLE}.sched_name ;;
  }

  dimension: time_zone_id {
    type: string
    sql: ${TABLE}.time_zone_id ;;
  }

  dimension: trigger_group {
    type: string
    sql: ${TABLE}.trigger_group ;;
  }

  dimension: trigger_name {
    type: string
    sql: ${TABLE}.trigger_name ;;
  }

  measure: count {
    type: count
    drill_fields: [trigger_name, sched_name]
  }
}
