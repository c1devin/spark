-- This file is automatically generated by LogicalPlanToSQLSuite.
FROM
(FROM parquet_t1 SELECT TRANSFORM(key, value) USING 'cat' AS (thing1 int, thing2 string)) t
SELECT thing1 + 1
--------------------------------------------------------------------------------
SELECT `gen_attr` AS `(thing1 + 1)` FROM (SELECT (`gen_attr` + 1) AS `gen_attr` FROM (SELECT TRANSFORM (`gen_attr`, `gen_attr`) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' WITH SERDEPROPERTIES('field.delim' = '	') USING 'cat' AS (`gen_attr` int, `gen_attr` string) ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' WITH SERDEPROPERTIES('field.delim' = '	') FROM (SELECT `key` AS `gen_attr`, `value` AS `gen_attr` FROM `default`.`parquet_t1`) AS gen_subquery_0) AS t) AS gen_subquery_1
