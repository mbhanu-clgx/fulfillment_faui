view: qrtz_triggers {
  sql_table_name: public.qrtz_triggers ;;

  dimension: calendar_name {
    type: string
    sql: ${TABLE}.calendar_name ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: end_time {
    type: number
    sql: ${TABLE}.end_time ;;
  }

  dimension: job_data {
    type: string
    sql: ${TABLE}.job_data ;;
  }

  dimension: job_group {
    type: string
    sql: ${TABLE}.job_group ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}.job_name ;;
  }

  dimension: misfire_instr {
    type: number
    sql: ${TABLE}.misfire_instr ;;
  }

  dimension: next_fire_time {
    type: number
    sql: ${TABLE}.next_fire_time ;;
  }

  dimension: prev_fire_time {
    type: number
    sql: ${TABLE}.prev_fire_time ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension: sched_name {
    type: string
    sql: ${TABLE}.sched_name ;;
  }

  dimension: start_time {
    type: number
    sql: ${TABLE}.start_time ;;
  }

  dimension: trigger_group {
    type: string
    sql: ${TABLE}.trigger_group ;;
  }

  dimension: trigger_name {
    type: string
    sql: ${TABLE}.trigger_name ;;
  }

  dimension: trigger_state {
    type: string
    sql: ${TABLE}.trigger_state ;;
  }

  dimension: trigger_type {
    type: string
    sql: ${TABLE}.trigger_type ;;
  }

  measure: count {
    type: count
    drill_fields: [sched_name, calendar_name, job_name, trigger_name]
  }
}
