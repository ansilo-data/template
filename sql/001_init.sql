-- Get started by changing this file

CREATE VIEW hello AS
    SELECT 'Greetings from Ansilo!' as msg;

GRANT SELECT ON hello TO app;

COMMENT ON COLUMN hello.msg IS 'The welcome message to all our friends';