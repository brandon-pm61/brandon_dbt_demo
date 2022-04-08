{{config(
	schema = "DATA_PIPELINE",
	materialized = "table"
)}}
WITH select_step1 as (
  SELECT
    "FACT_SUBSCRIPTION_ACTIVITY"."SBSCRN_ACTVTY_KEY" AS "SBSCRN_ACTVTY_KEY",
    "FACT_SUBSCRIPTION_ACTIVITY"."SBSCRN_ID" AS "SBSCRN_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."ACTVTY_TYPE_ID" AS "ACTVTY_TYPE_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."USED_ACTVTY_TYPE_ID" AS "USED_ACTVTY_TYPE_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."ACTVTY_DT" AS "ACTVTY_DT",
    "FACT_SUBSCRIPTION_ACTIVITY"."ACTVTY_TS" AS "ACTVTY_TS",
    "FACT_SUBSCRIPTION_ACTIVITY"."HHLD_ID" AS "HHLD_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."PRTY_KEY" AS "PRTY_KEY",
    "FACT_SUBSCRIPTION_ACTIVITY"."PRTY_ID" AS "PRTY_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."PARNT_ACCT_KEY" AS "PARNT_ACCT_KEY",
    "FACT_SUBSCRIPTION_ACTIVITY"."PARNT_ACCT_ID" AS "PARNT_ACCT_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."PARNT_ACCT_NUM" AS "PARNT_ACCT_NUM",
    "FACT_SUBSCRIPTION_ACTIVITY"."CHILD_ACCT_KEY" AS "CHILD_ACCT_KEY",
    "FACT_SUBSCRIPTION_ACTIVITY"."CHILD_ACCT_ID" AS "CHILD_ACCT_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."CHILD_ACCT_NUM" AS "CHILD_ACCT_NUM",
    "FACT_SUBSCRIPTION_ACTIVITY"."VEH_KEY" AS "VEH_KEY",
    "FACT_SUBSCRIPTION_ACTIVITY"."DVC_KEY" AS "DVC_KEY",
    "FACT_SUBSCRIPTION_ACTIVITY"."DVC_ID" AS "DVC_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."EQMNT_KEY" AS "EQMNT_KEY",
    "FACT_SUBSCRIPTION_ACTIVITY"."EQMNT_ID" AS "EQMNT_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."PLAN_KEY" AS "PLAN_KEY",
    "FACT_SUBSCRIPTION_ACTIVITY"."PLAN_ID" AS "PLAN_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."OFR_ID" AS "OFR_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."FROM_PLAN_KEY" AS "FROM_PLAN_KEY",
    "FACT_SUBSCRIPTION_ACTIVITY"."FROM_PLAN_ID" AS "FROM_PLAN_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."FROM_OFR_ID" AS "FROM_OFR_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."PROD_KEY" AS "PROD_KEY",
    "FACT_SUBSCRIPTION_ACTIVITY"."PROD_ID" AS "PROD_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."FROM_PROD_KEY" AS "FROM_PROD_KEY",
    "FACT_SUBSCRIPTION_ACTIVITY"."FROM_PROD_ID" AS "FROM_PROD_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."PKG_ID" AS "PKG_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."FROM_PKG_ID" AS "FROM_PKG_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."FEAT_ID" AS "FEAT_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."AGN_KEY" AS "AGN_KEY",
    "FACT_SUBSCRIPTION_ACTIVITY"."CSR_ID" AS "CSR_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."PTNR_ID" AS "PTNR_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."LNKD_INET_FL" AS "LNKD_INET_FL",
    "FACT_SUBSCRIPTION_ACTIVITY"."MRD_TYPE_CD" AS "MRD_TYPE_CD",
    "FACT_SUBSCRIPTION_ACTIVITY"."SBSCR_LIFCYC_KEY" AS "SBSCR_LIFCYC_KEY",
    "FACT_SUBSCRIPTION_ACTIVITY"."CONV_REP_OWN_SEGMT_KEY" AS "CONV_REP_OWN_SEGMT_KEY",
    "FACT_SUBSCRIPTION_ACTIVITY"."OWNR_TYPE2_KEY" AS "OWNR_TYPE2_KEY",
    "FACT_SUBSCRIPTION_ACTIVITY"."DEACTIVATION_REASON_CODE" AS "DEACTIVATION_REASON_CODE",
    "FACT_SUBSCRIPTION_ACTIVITY"."TRIAL_ID" AS "TRIAL_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."SRVC_ID" AS "SRVC_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."RENW_ID" AS "RENW_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."FROM_RENW_ID" AS "FROM_RENW_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."COLL_SCNRO_ID" AS "COLL_SCNRO_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."SRVC_LVL_PMT_KEY" AS "SRVC_LVL_PMT_KEY",
    "FACT_SUBSCRIPTION_ACTIVITY"."NONPAY_SRVC_KEY" AS "NONPAY_SRVC_KEY",
    "FACT_SUBSCRIPTION_ACTIVITY"."BILLING_METHOD" AS "BILLING_METHOD",
    "FACT_SUBSCRIPTION_ACTIVITY"."FROM_BILLING_METHOD" AS "FROM_BILLING_METHOD",
    "FACT_SUBSCRIPTION_ACTIVITY"."SLFPAY_TURNOVER_RSN" AS "SLFPAY_TURNOVER_RSN",
    "FACT_SUBSCRIPTION_ACTIVITY"."SLFPAY_TURNOVER_DT" AS "SLFPAY_TURNOVER_DT",
    "FACT_SUBSCRIPTION_ACTIVITY"."FUTURE_DEACTVN_DT" AS "FUTURE_DEACTVN_DT",
    "FACT_SUBSCRIPTION_ACTIVITY"."SCHD_SEASONAL_SUSP_REACTVN_DT" AS "SCHD_SEASONAL_SUSP_REACTVN_DT",
    "FACT_SUBSCRIPTION_ACTIVITY"."CALL_REASON" AS "CALL_REASON",
    "FACT_SUBSCRIPTION_ACTIVITY"."CALL_DISPOSITION" AS "CALL_DISPOSITION",
    "FACT_SUBSCRIPTION_ACTIVITY"."INSE_USER_ID" AS "INSE_USER_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."INSE_TS" AS "INSE_TS",
    "FACT_SUBSCRIPTION_ACTIVITY"."UPDT_USER_ID" AS "UPDT_USER_ID",
    "FACT_SUBSCRIPTION_ACTIVITY"."UPDT_TS" AS "UPDT_TS",
    "FACT_SUBSCRIPTION_ACTIVITY"."SAVE_ACTIVITY" AS "SAVE_ACTIVITY",
    "FACT_SUBSCRIPTION_ACTIVITY"."DEACT_ACTIVITY_BY_SAVE_AGENT" AS "DEACT_ACTIVITY_BY_SAVE_AGENT",
    "FACT_SUBSCRIPTION_ACTIVITY"."CONVERSION_ACTIVITY_BY_SAVE_AGENT" AS "CONVERSION_ACTIVITY_BY_SAVE_AGENT",
    "FACT_SUBSCRIPTION_ACTIVITY"."SAVE_OPPORTUNITY_ACTIVITY" AS "SAVE_OPPORTUNITY_ACTIVITY"
  FROM
    "SCHEMA_INFO"."FACT_SUBSCRIPTION_ACTIVITY"
),
join_step2 as (
  SELECT
    select_step1."SBSCRN_ACTVTY_KEY" AS "SBSCRN_ACTVTY_KEY",
    select_step1."SBSCRN_ID" AS "SBSCRN_ID",
    select_step1."ACTVTY_TYPE_ID" AS "ACTVTY_TYPE_ID",
    select_step1."USED_ACTVTY_TYPE_ID" AS "USED_ACTVTY_TYPE_ID",
    select_step1."ACTVTY_DT" AS "ACTVTY_DT",
    select_step1."ACTVTY_TS" AS "ACTVTY_TS",
    select_step1."HHLD_ID" AS "HHLD_ID",
    select_step1."PRTY_KEY" AS "PRTY_KEY",
    select_step1."PRTY_ID" AS "PRTY_ID",
    select_step1."PARNT_ACCT_KEY" AS "PARNT_ACCT_KEY",
    select_step1."PARNT_ACCT_ID" AS "PARNT_ACCT_ID",
    select_step1."PARNT_ACCT_NUM" AS "PARNT_ACCT_NUM",
    select_step1."CHILD_ACCT_KEY" AS "CHILD_ACCT_KEY",
    select_step1."CHILD_ACCT_ID" AS "CHILD_ACCT_ID",
    select_step1."CHILD_ACCT_NUM" AS "CHILD_ACCT_NUM",
    select_step1."VEH_KEY" AS "VEH_KEY",
    select_step1."DVC_KEY" AS "DVC_KEY",
    select_step1."DVC_ID" AS "DVC_ID",
    select_step1."EQMNT_KEY" AS "EQMNT_KEY",
    select_step1."EQMNT_ID" AS "EQMNT_ID",
    select_step1."PLAN_KEY" AS "PLAN_KEY",
    select_step1."PLAN_ID" AS "PLAN_ID",
    select_step1."OFR_ID" AS "OFR_ID",
    select_step1."FROM_PLAN_KEY" AS "FROM_PLAN_KEY",
    select_step1."FROM_PLAN_ID" AS "FROM_PLAN_ID",
    select_step1."FROM_OFR_ID" AS "FROM_OFR_ID",
    select_step1."PROD_KEY" AS "PROD_KEY",
    select_step1."PROD_ID" AS "PROD_ID",
    select_step1."FROM_PROD_KEY" AS "FROM_PROD_KEY",
    select_step1."FROM_PROD_ID" AS "FROM_PROD_ID",
    select_step1."PKG_ID" AS "PKG_ID",
    select_step1."FROM_PKG_ID" AS "FROM_PKG_ID",
    select_step1."FEAT_ID" AS "FEAT_ID",
    select_step1."AGN_KEY" AS "AGN_KEY",
    select_step1."CSR_ID" AS "CSR_ID",
    select_step1."PTNR_ID" AS "PTNR_ID",
    select_step1."LNKD_INET_FL" AS "LNKD_INET_FL",
    select_step1."MRD_TYPE_CD" AS "MRD_TYPE_CD",
    select_step1."SBSCR_LIFCYC_KEY" AS "SBSCR_LIFCYC_KEY",
    select_step1."CONV_REP_OWN_SEGMT_KEY" AS "CONV_REP_OWN_SEGMT_KEY",
    select_step1."OWNR_TYPE2_KEY" AS "OWNR_TYPE2_KEY",
    select_step1."DEACTIVATION_REASON_CODE" AS "DEACTIVATION_REASON_CODE",
    select_step1."TRIAL_ID" AS "TRIAL_ID",
    select_step1."SRVC_ID" AS "SRVC_ID",
    select_step1."RENW_ID" AS "RENW_ID",
    select_step1."FROM_RENW_ID" AS "FROM_RENW_ID",
    select_step1."COLL_SCNRO_ID" AS "COLL_SCNRO_ID",
    select_step1."SRVC_LVL_PMT_KEY" AS "SRVC_LVL_PMT_KEY",
    select_step1."NONPAY_SRVC_KEY" AS "NONPAY_SRVC_KEY",
    select_step1."BILLING_METHOD" AS "BILLING_METHOD",
    select_step1."FROM_BILLING_METHOD" AS "FROM_BILLING_METHOD",
    select_step1."SLFPAY_TURNOVER_RSN" AS "SLFPAY_TURNOVER_RSN",
    select_step1."SLFPAY_TURNOVER_DT" AS "SLFPAY_TURNOVER_DT",
    select_step1."FUTURE_DEACTVN_DT" AS "FUTURE_DEACTVN_DT",
    select_step1."SCHD_SEASONAL_SUSP_REACTVN_DT" AS "SCHD_SEASONAL_SUSP_REACTVN_DT",
    select_step1."CALL_REASON" AS "CALL_REASON",
    select_step1."CALL_DISPOSITION" AS "CALL_DISPOSITION",
    select_step1."INSE_USER_ID" AS "INSE_USER_ID",
    select_step1."INSE_TS" AS "INSE_TS",
    select_step1."UPDT_USER_ID" AS "UPDT_USER_ID",
    select_step1."UPDT_TS" AS "UPDT_TS",
    select_step1."SAVE_ACTIVITY" AS "SAVE_ACTIVITY",
    select_step1."DEACT_ACTIVITY_BY_SAVE_AGENT" AS "DEACT_ACTIVITY_BY_SAVE_AGENT",
    select_step1."CONVERSION_ACTIVITY_BY_SAVE_AGENT" AS "CONVERSION_ACTIVITY_BY_SAVE_AGENT",
    select_step1."SAVE_OPPORTUNITY_ACTIVITY" AS "SAVE_OPPORTUNITY_ACTIVITY",
    "DIM_AGENT"."AGENT_RECORD_KEY" AS "AGENT_RECORD_KEY",
    "DIM_AGENT"."AGENT_ID" AS "AGENT_ID",
    "DIM_AGENT"."CSR_ID" AS "CSR_ID1",
    "DIM_AGENT"."AGENT_SUPERVISOR_RECORD_KEY" AS "AGENT_SUPERVISOR_RECORD_KEY",
    "DIM_AGENT"."AGENT_SUPERVISOR_CSR_ID" AS "AGENT_SUPERVISOR_CSR_ID",
    "DIM_AGENT"."AGENT_STATUS" AS "AGENT_STATUS",
    "DIM_AGENT"."AGENT_ROLE_START_DATE" AS "AGENT_ROLE_START_DATE",
    "DIM_AGENT"."AGENT_ROLE_END_DATE" AS "AGENT_ROLE_END_DATE",
    "DIM_AGENT"."AGENT_ROLE_SMS" AS "AGENT_ROLE_SMS",
    "DIM_AGENT"."AGENT_ROLE_MARKETING" AS "AGENT_ROLE_MARKETING",
    "DIM_AGENT"."AGENT_LOCATION" AS "AGENT_LOCATION",
    "DIM_AGENT"."AGENT_VENDOR" AS "AGENT_VENDOR",
    "DIM_AGENT"."AGENT_SITE" AS "AGENT_SITE",
    "DIM_AGENT"."AGENT_LOB" AS "AGENT_LOB",
    "DIM_AGENT"."ACTIVATION_SOURCE" AS "ACTIVATION_SOURCE",
    "DIM_AGENT"."CURRENT_RECORD_FLAG" AS "CURRENT_RECORD_FLAG",
    "DIM_AGENT"."DELETED_RECORD_FLAG" AS "DELETED_RECORD_FLAG",
    "DIM_AGENT"."COLUMN17" AS "COLUMN17"
  FROM
    select_step1
    LEFT OUTER JOIN "SCHEMA_INFO"."DIM_AGENT" ON (
      select_step1."AGN_KEY" = "DIM_AGENT"."AGENT_RECORD_KEY"
    )
),
group_by_step3 as (
  SELECT
    CAST(join_step2."PKG_ID" as varchar) AS "PKG_ID",
    CAST(join_step2."FROM_PKG_ID" as varchar) AS "FROM_PKG_ID",
    CAST(join_step2."MRD_TYPE_CD" as varchar) AS "MRD_TYPE_CD",
    CAST(join_step2."BILLING_METHOD" as varchar) AS "BILLING_METHOD",
    CAST(join_step2."AGN_KEY" as INT) AS "AGN_KEY",
    CAST(join_step2."ACTIVATION_SOURCE" as varchar) AS "ACTIVATION_SOURCE",
    CAST(join_step2."AGENT_VENDOR" as varchar) AS "AGENT_VENDOR",
    CAST(join_step2."AGENT_STATUS" as varchar) AS "AGENT_STATUS",
    CAST(join_step2."AGENT_SITE" as varchar) AS "AGENT_SITE"
  FROM
    join_step2
  GROUP BY
    join_step2."PKG_ID",
    join_step2."FROM_PKG_ID",
    join_step2."MRD_TYPE_CD",
    join_step2."BILLING_METHOD",
    join_step2."AGN_KEY",
    join_step2."ACTIVATION_SOURCE",
    join_step2."AGENT_VENDOR",
    join_step2."AGENT_STATUS",
    join_step2."AGENT_SITE"
)
SELECT
  *
FROM
  group_by_step3
LIMIT
  100