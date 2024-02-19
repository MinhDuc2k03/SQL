CREATE TABLE Document (
  doc_id INTEGER PRIMARY KEY,
  doc_name VARCHAR(255) NOT NULL,
  doc_type VARCHAR(20) NOT NULL,
);



CREATE TABLE Author (
  author_id INTEGER PRIMARY KEY,
  author_name VARCHAR(255) NOT NULL,
  birth_year INTEGER NOT NULL,
);



CREATE TABLE Document_Author (
  doc_id INTEGER NOT NULL,
  author_id INTEGER NOT NULL,
  FOREIGN KEY (doc_id) REFERENCES Document(doc_id),
  FOREIGN KEY (author_id) REFERENCES Author(author_id),
)



CREATE TABLE Book_Title (
  doc_id INTEGER NOT NULL,
  publish_count INTEGER NOT NULL,
  publish_year INTEGER NOT NULL,
  paper_size VARCHAR(10) NOT NULL,
  pages INTEGER NOT NULL,
  publish_company VARCHAR(255) NOT NULL,
  price MONEY NOT NULL,
  cd_included BOOLEAN,
  FOREIGN KEY (doc_id) REFERENCES Document(doc_id),
)



CREATE TABLE Magazine_Title (
  doc_id INTEGER NOT NULL,
  publish_year INTEGER NOT NULL,
  periodic VARCHAR(50) NOT NULL,
  publish_company VARCHAR(255) NOT NULL,
  FOREIGN KEY (doc_id) REFERENCES Document(doc_id),
)



CREATE TABLE Book (
  book_count INTEGER NOT NULL,
  publish_count INTEGER NOT NULL,
  book_condition VARCHAR(255),
  FOREIGN KEY (publish_count) REFERENCES Book_Title(publish_count),
)



CREATE TABLE Magazine_Info (
  doc_id INTEGER NOT NULL,
  publish_count INTEGER NOT NULL,
  total_import_count INTEGER NOT NULL,
  magazine_remaining INTEGER NOT NULL,
  FOREIGN KEY (doc_id) REFERENCES Document(doc_id),
)



CREATE TABLE Card (
  card_number INTEGER PRIMARY KEY,
  issuance_date DATE,
  owner_name VARCHAR(255),
  owner_job VARCHAR(255),
  gender VARCHAR(10),
)



CREATE TABLE Card_Document_Borrow(
  card_number INTEGER,

  borrow_date DATE,
  return_date DATE,
)



CREATE UNIQUE INDEX uidx_did ON Document(doc_id);