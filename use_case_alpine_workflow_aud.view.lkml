view: use_case_alpine_workflow_aud {
  sql_table_name: public.use_case_alpine_workflow_aud ;;

  dimension: alpine_workflow_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.alpine_workflow_id ;;
  }

  dimension: rev {
    type: number
    sql: ${TABLE}.rev ;;
  }

  dimension: revtype {
    type: number
    sql: ${TABLE}.revtype ;;
  }

  dimension: use_case_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.use_case_id ;;
  }

  measure: count {
    type: count
    drill_fields: [alpine_workflow.id, alpine_workflow.name, use_case.name, use_case.id]
  }
}
