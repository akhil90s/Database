# Database

### Indexes

- Usable and Non-Usable Indexes

Indexes are non-usable during some data-load or batch process. Orcale optimizer doesn't update the index only after we rebuild it. This reduces not required I/O operation.
``` sql
ALTER INDEX index_name UNUABLE;
```
``` sql
ALTER INDEX index_name REBUILD;
```
-----
- Visible and Invisible Indexes

An invisible index is an index that is maintained by the database but ignored by the optimizer unless explicitly specified.  The invisible index is an alternative to dropping or making an index unusable.  This feature is also functional when certain modules of an application require a specific index without affecting the rest of the application.
Make the index invisible
``` sql
ALTER INDEX schema_name.index_name INVISIBLE;
``` 
Make the index visible
``` sql
ALTER INDEX schema_name.index_name VISIBLE;
``` 

Use Case : Help in performance, We want to drop the index from the production server but we did not know the effect after drop. Table having large in size if we need to create again the dropped index then we need large time. So, plan to make the index invisible for time period if our environment need the index we will make it visible by alter its property.

-----
- Types of Indexes
	- B-Tree Index
		- Descending Index
		- Key Compression Index
		- Reverse Key Index
		- Index Organized Table
		- Clusterd Index
	- BitMap Index
	- Functional Index
	- Domain Index
	- Partitioned Index
-----
- Types of B-Tree Index
	- Descending Index
	- Key Compression Index
	- Reverse Key Index
	- Index Organized Table
	- Clusterd Index
-----
- Simple and Composite Index
	- Relevance of Order in Composite Index
-----
- Unique and Non-Unique Indexe
-----
- Index Splitting and Index Spawning in B-Tree Index
	- Splitting : This is the term used to describe what happens when an index node is filled with keys and a new index node is created at the same level as the full node. Splitting widens the b-tree horizontally
	- Spawning : This is the term used to describe the process of adding a new level to an index. As a new index is populated, it begin life as a single level index. As keys are added, a spawn take place and the first level node re-configures itself to have pointers to lower-level nodes. It is important to understand that spawning takes place at specific points within the index, and not for the entire index. For example, a three level index may have a node that experiences heavy insert activity. This node may spawn a fourth level without all of the other level three nodes spawning new levels.
-----	
- Index Scan Methods
	- Index Unique Scan
	- Index Range Scan
	- Index Full Scan
	- Index Fast Full Scan
	- Index Skip Scan
-----

	