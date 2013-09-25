INSERT INTO users (email) VALUES ('user1@home.com');
INSERT INTO users (email) VALUES ('user2@home.com');
INSERT INTO users (email) VALUES ('user3@home.com');
INSERT INTO users (email) VALUES ('user4@home.com');

INSERT INTO snippets (current_version, parent_id, created, user_id, description) VALUES (1, 0, strftime('%s','now'), 1, 'the first snippet');
INSERT INTO snippets (current_version, parent_id, created, user_id, description) VALUES (3, 0, strftime('%s','now'), 1, 'a second snippet');
INSERT INTO snippets (current_version, parent_id, created, user_id, description) VALUES (2, 0, strftime('%s','now'), 2, 'what is this');
INSERT INTO snippets (current_version, parent_id, created, user_id, description) VALUES (1, 1, strftime('%s','now'), 3, 'more stuff');

INSERT INTO snippet_versions (snippet_id, version, contents, created) VALUES (1, 1, 'here comes the code 1', strftime('%s','now'));
INSERT INTO snippet_versions (snippet_id, version, contents, created) VALUES (2, 1, 'here comes the code 2', strftime('%s','now'));
INSERT INTO snippet_versions (snippet_id, version, contents, created) VALUES (2, 2, 'here comes the code 3', strftime('%s','now'));
INSERT INTO snippet_versions (snippet_id, version, contents, created) VALUES (2, 3, 'here comes the code 4', strftime('%s','now'));
INSERT INTO snippet_versions (snippet_id, version, contents, created) VALUES (3, 1, 'here comes the code 5', strftime('%s','now'));
INSERT INTO snippet_versions (snippet_id, version, contents, created) VALUES (3, 2, 'here comes the code 6', strftime('%s','now'));
INSERT INTO snippet_versions (snippet_id, version, contents, created) VALUES (4, 1, 'here comes the code 7', strftime('%s','now'));

INSERT INTO comments (snippet_id, user_id, snippet_version, created, contents) VALUES (1, 1, 1, strftime('%s','now'), 'this is a comment 1');
INSERT INTO comments (snippet_id, user_id, snippet_version, created, contents) VALUES (1, 2, 1, strftime('%s','now'), 'this is a comment 2');
INSERT INTO comments (snippet_id, user_id, snippet_version, created, contents) VALUES (3, 3, 2, strftime('%s','now'), 'this is a comment 3');
