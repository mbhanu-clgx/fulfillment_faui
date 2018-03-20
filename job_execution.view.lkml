view: job_execution {
  sql_table_name: public.job_execution ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: alpine_process_id {
    type: string
    sql: ${TABLE}.alpine_process_id ;;
  }

  dimension: aws_compress_path {
    type: string
    sql: ${TABLE}.aws_compress_path ;;
  }

  dimension: aws_merge_path {
    type: string
    sql: ${TABLE}.aws_merge_path ;;
  }

  dimension: aws_path {
    type: string
    sql: ${TABLE}.aws_path ;;
  }

  dimension: base_filename {
    type: string
    sql: ${TABLE}.base_filename ;;
  }

  dimension_group: execution {
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
    sql: ${TABLE}.execution_date ;;
  }

  dimension_group: insert_dt {
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
    sql: ${TABLE}.insert_dt ;;
  }

  dimension: job_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.job_id ;;
  }

  dimension: job_status {
    type: string
    sql: ${TABLE}.job_status ;;
  }

  dimension_group: update_dt {
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
    sql: ${TABLE}.update_dt ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      base_filename,
      job.id,
      job.order_name,
      job_execution_task.count,
      job_execution_task_aud.count
    ]
  }
}
