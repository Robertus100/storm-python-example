drop table if exists mtr;

create table mtr(
  source_ip varchar,
  target_ip varchar,
  local_time time,
  loss decimal,
  avg_latency decimal,
  stddev_latency decimal
  constraint my_pk primary key (source_ip, target_ip, local_time)
) ttl=432000
;
