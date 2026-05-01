#  Music Streaming Database System  

##  Overview  
This project is a **Music Store Database System** that models the backend of a platform similar to Spotify.  

It focuses on:  
- **Scalable relational database design**  
- **Normalization and data integrity**  

---

##  Database Design  

- Designed a **fully normalized relational schema**  
- Defined:  
  - **Tables**  
  - **Attributes**  
  - **Primary Keys**  
  - **Foreign Key constraints**  

###  Core Entities  
- **Users**  
- **Artists**  
- **Albums**  
- **Songs**  
- **Genres**  
- **Playlists**  
- **Subscriptions & Payments**  

###  Relationships  
  - Songs ↔ Artists  
  - Songs ↔ Genres  
  - Playlists ↔ Songs  

---

##  Implementation  

- Built using **SQLite**  
- Includes:  
  - `schema.sql`  Database structure  
  - `seed.sql` Sample daa
  - `indexex.sql` Indexes
  - `queries.sql` High Frequency queries  

- Ensures:  
  - **Referential integrity** using foreign keys  
  - **Data validation** using constraints

---

##  Features Supported  

- User playlists and liked songs  
- Listening history tracking  
- Artist collaborations  
- Genre classification  
- Subscription and payment management  

---

