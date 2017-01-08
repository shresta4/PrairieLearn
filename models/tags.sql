CREATE TABLE IF NOT EXISTS tags (
    id BIGSERIAL PRIMARY KEY,
    name text,
    number INTEGER,
    color text,
    description text,
    course_id BIGINT NOT NULL REFERENCES courses ON DELETE CASCADE ON UPDATE CASCADE,
    UNIQUE (name, course_id)
);

ALTER TABLE tags ADD COLUMN IF NOT EXISTS description text;

ALTER TABLE tags ALTER COLUMN id SET DATA TYPE BIGINT;
ALTER TABLE tags ALTER COLUMN course_id SET DATA TYPE BIGINT;
ALTER TABLE tags ALTER COLUMN name SET DATA TYPE TEXT;
ALTER TABLE tags ALTER COLUMN color SET DATA TYPE TEXT;