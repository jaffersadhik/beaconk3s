insert into platform_cluster_component_kafka_cluster_map
(component_name,platform_cluster_name,kafka_cluster_producer,kafka_cluster_consumer,
consumer_group_name,kafka_client_consumer_count,sleep_time_in_millis,
threads_count,intl_threads_count,max_producers_per_topic)
values(
'carrier_handover','trans','trans-platform','trans-platform',
'group_carrier_handover','3','100',
'10','1','6'
);