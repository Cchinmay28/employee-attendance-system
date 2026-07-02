create table if not exists employees (
  employee_id text primary key,
  name text not null,
  department text not null,
  office text not null,
  password text not null
);

create table if not exists offices (
  office_id text primary key,
  office_name text not null,
  city text not null
);

create table if not exists attendance (
  record_id text primary key,
  employee_id text not null,
  employee_name text not null,
  department text not null,
  office text not null,
  date text not null,
  clock_in_time text not null,
  clock_out_time text,
  total_hours text,
  late_minutes text,
  extra_hours text,
  clock_in_ip text,
  clock_out_ip text,
  status text not null,
  late text not null
);

create table if not exists denied_attempts (
  timestamp text primary key,
  employee_id text not null,
  action text not null,
  detected_ip text not null,
  reason text not null
);
