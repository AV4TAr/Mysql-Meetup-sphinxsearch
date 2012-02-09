CREATE TABLE IF NOT EXISTS `sph_counter` (
  `counter_id` varchar(20) NOT NULL,
  `max_doc_id` bigint(20) unsigned NOT NULL,
  `last_doc_id` bigint(20) unsigned NOT NULL,
  `modif` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`counter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;