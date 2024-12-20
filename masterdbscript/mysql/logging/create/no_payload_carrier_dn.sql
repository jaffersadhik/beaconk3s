CREATE TABLE `no_payload_carrier_dn` (
  `route_id` varchar(6) DEFAULT NULL,
  `cli_id` bigint(16) NOT NULL,
  `retry_attempt` tinyint(1) NOT NULL DEFAULT 0,
  `msg_id` varchar(25) NOT NULL,
  `carrier_full_dn` varchar(2000) DEFAULT NULL,
  `recv_time` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `carrier_rcvd_time` datetime(3) DEFAULT current_timestamp(3),
  `carrier_ack_id` varchar(100) DEFAULT NULL,
  `carrier_sys_id` varchar(20) DEFAULT NULL,
  `dn_ori_sts_code` varchar(5) NOT NULL,
  `dn_ori_sts_desc` varchar(100) NOT NULL,
  `car_ori_sts_code` varchar(5) DEFAULT NULL,
  `car_ori_sts_desc` varchar(10) DEFAULT NULL,
  `car_sts_code` varchar(100) DEFAULT NULL,
  `car_sts_desc` varchar(100) DEFAULT NULL,
  `retry_org_route_id` varchar(6) DEFAULT NULL,
  `retry_alt_route_id` varchar(6) DEFAULT NULL,
  `delivery_status` varchar(10) DEFAULT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  PRIMARY KEY (`msg_id`,`retry_attempt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 
