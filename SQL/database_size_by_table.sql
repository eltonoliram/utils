SELECT segment_name,
       segment_type,
       tablespace_name,
       round(bytes /(1024 * 1024 * 1024), 1) GB,
       initial_extent,
       next_extent,
       extents,
       pct_increase
  FROM user_SEGMENTS
 WHERE SEGMENT_TYPE = 'TABLE'
 ORDER BY bytes desc