view: use_case {
  sql_table_name: public.use_case ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: alpine_value {
    type: string
    sql: ${TABLE}.alpine_value ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      job.count,
      job_aud.count,
      use_case_alpine_workflow.count,
      use_case_alpine_workflow_aud.count
    ]
  }
}
