CREATE TABLE `jndi_info` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '[PropertyKey=id] ID for the connection Pool',
  `description` varchar(30) NOT NULL,
  `url` varchar(200) NOT NULL COMMENT '[PropertyKey=url] JDBC URL for the database connection',
  `driver_class_name` varchar(100) NOT NULL COMMENT '[PropertyKey=driverClassName] Driver class to be used',
  `username` varchar(50) NOT NULL COMMENT '[PropertyKey=username] User Name for the connection creation',
  `password` varchar(50) NOT NULL COMMENT '[PropertyKey=password] Password for the connecton creation',
  `initial_size` int(3) DEFAULT 1 COMMENT '[PropertyKey=initialSize] The initial number of connections that are created when the pool is started',
  `max_active` int(3) DEFAULT 3 COMMENT '[PropertyKey=maxActive] Old Property. Maximum connection to be available in the connection pool',
  `max_total` int(3) DEFAULT 10 COMMENT '[PropertyKey=maxTotal] Maximum connection to be available in the connection pool',
  `max_idle` int(3) DEFAULT 5 COMMENT '[PropertyKey=maxIdle] The maximum number of connections that can remain idle in the pool',
  `min_idle` int(3) DEFAULT 2 COMMENT '[PropertyKey=minIdle] The minimum number of connections that can remain idle in the pool',
  `max_wait` int(9) DEFAULT -1 COMMENT '[PropertyKey=maxWait] Old Property. The maximum number of milliseconds that the pool will wait (when there are no available connections) for a connection to be returned before throwing an exception',
  `max_wait_millis` int(9) DEFAULT -1 COMMENT '[PropertyKey=maxWaitMillis] The maximum number of milliseconds that the pool will wait (when there are no available connections) for a connection to be returned before throwing an exception',
  `time_between_eviction_runs_millis` int(9) DEFAULT -1 COMMENT '[PropertyKey=timeBetweenEvictionRunsMillis] The number of milliseconds to sleep between runs of the idle object evictor thread',
  `num_tests_per_eviction_run` int(3) DEFAULT 3 COMMENT '[PropertyKey=numTestsPerEvictionRun] The number of objects to examine during each run of the idle object evictor thread',
  `min_evictable_idle_time_millis` int(9) DEFAULT 1800000 COMMENT '[PropertyKey=minEvictableIdleTimeMillis] The minimum amount of time an object may sit idle in the pool before it is eligable for eviction by the idle object evictor',
  `validation_query` varchar(100) DEFAULT 'select 1' COMMENT '[PropertyKey=validationQuery] Query to fire to check the connection''s status',
  `test_on_borrow` int(1) DEFAULT 1 COMMENT '[PropertyKey=testOnBorrow] The indication of whether objects will be validated before being borrowed from the pool',
  `remove_abandoned` int(1) DEFAULT 1 COMMENT '[PropertyKey=removeAbandoned] Old Property.',
  `remove_abandoned_on_maintenance` int(1) DEFAULT 1 COMMENT '[PropertyKey=removeAbandonedOnMaintenance] Flags to remove abandoned connections if they exceed the removeAbandonedTimout',
  `remove_abandoned_on_borrow` int(1) DEFAULT 1 COMMENT '[PropertyKey=removeAbandonedOnBorrow] Flags to remove abandoned connections if they exceed the removeAbandonedTimout',
  `remove_abandoned_timeout_seconds` int(4) DEFAULT 300 COMMENT '[PropertyKey=removeAbandonedTimeout] Timeout in seconds before an abandoned connection can be removed.',
  `log_abandoned` int(1) DEFAULT 0 COMMENT '[PropertyKey=logAbandoned] Flag to log stack traces for application code which abandoned a Statement or Connection',
  `abandoned_usage_tracking` int(1) DEFAULT 0 COMMENT '[PropertyKey=abandonedUsageTracking] The connection pool records a stack trace every time a method is called on a pooled connection and retains the most recent stack trace to aid debugging of abandoned connection',
  `other_connection_properties` varchar(2000) DEFAULT ' ' COMMENT '[PropertyKey=connectionProperties] \n1. Other mislaneous properties to be used.\n2. Every property will be '';'' separated.\n3. Property should be specified as <propertyName=propertyValue>',
  `pin` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_desc` (`description`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1 