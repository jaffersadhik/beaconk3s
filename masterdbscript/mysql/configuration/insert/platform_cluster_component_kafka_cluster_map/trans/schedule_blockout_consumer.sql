insert into platform_cluster_component_kafka_cluster_map
(component_name,platform_cluster_name,kafka_cluster_producer,kafka_cluster_consumer,
consumer_group_name,kafka_client_consumer_count,sleep_time_in_millis,
threads_count,intl_threads_count,max_producers_per_topic)
values(
'schedule_blockout_consumer','trans','trans-platform','trans-platform',
'group_schedule_blockout_consumer','3','100',
'10','1','6'
);