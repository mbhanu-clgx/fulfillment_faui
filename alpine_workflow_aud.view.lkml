view: alpine_workflow_aud {
  sql_table_name: public.alpine_workflow_aud ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: rev {
    type: number
    sql: ${TABLE}.rev ;;
  }

  dimension: revtype {
    type: number
    sql: ${TABLE}.revtype ;;
  }

  dimension: workflow_id {
    type: number
    sql: ${TABLE}.workflow_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
