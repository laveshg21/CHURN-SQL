Table customer_churn.bank_churners {
  clientnum long [pk]
  attrition_flag varchar
  dependent_count int
  card_category varchar
  months_on_book int
  months_inactive_12_mon int
  contacts_count_12_mon int
  credit_limit double
  avg_open_to_buy double
  avg_utilization_ratio double
}

/* If schema name is omitted, it will default to "public" schema. */

Table customer_churn.basic_client_info {
  clientnum long [pk]
  customer_age int
  gender varchar
  education_level varchar
  marital_status varchar
  income_category varchar
}


Table customer_churn.enriched_churn_data {
  clientnum long [pk]
  total_relationship_count int
  total_revolving_bal double
  total_amt_chng_q4_q1 double
  total_trans_amt long
  total_trans_ct long
  total_ct_chng_q4_q1 double
}

Ref: customer_churn.bank_churners.(clientnum) - customer_churn.basic_client_info.(clientnum)
Ref: customer_churn.bank_churners.(clientnum) - customer_churn.enriched_churn_data.(clientnum)