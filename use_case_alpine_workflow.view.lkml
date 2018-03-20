view: use_case_alpine_workflow {
  sql_table_name: public.use_case_alpine_workflow ;;

  dimension: alpine_workflow_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.alpine_workflow_id ;;
  }

  dimension: use_case_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.use_case_id ;;
  }

  measure: count {
    type: count
    drill_fields: [use_case.name, use_case.id, alpine_workflow.id, alpine_workflow.name]
  }
}
