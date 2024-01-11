CREATE TABLE IF NOT EXISTS workflow.work_doc_rows
(
    LIKE documents.rows
        INCLUDING DEFAULTS
        INCLUDING INDEXES
        INCLUDING COMMENTS

);

ALTER TABLE workflow.work_doc_rows
    RENAME doc_id TO work_id;

ALTER TABLE workflow.work_doc_rows
    OWNER to ergo;