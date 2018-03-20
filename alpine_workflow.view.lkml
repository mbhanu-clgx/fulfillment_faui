view: alpine_workflow {
  sql_table_name: public.alpine_workflow ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: workflow_id {
    type: number
    sql: ${TABLE}.workflow_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, use_case_alpine_workflow.count, use_case_alpine_workflow_aud.count]
  }
}
