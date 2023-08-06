# Database

### Indexes

- Usable and Non-Usable Indexes
-----
- Visible and Non-Visible Indexes
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

	