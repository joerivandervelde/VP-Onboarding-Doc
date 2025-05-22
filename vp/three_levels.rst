Three Levels of Connectivity
----------------------------

`Level 1: Resource Discovery <https://vp-onboarding-doc.readthedocs.io/en/latest/level_1/index.html>`_

.. list-table::
	:widths: 20 20 20 20 20
	:header-rows: 1

	* - Description
	  - Contributes to
	  - Technology Requirements
	  - Access condition options
	  - Example Queries
	* - **At this level, the provider commits to openly publish online some standardised metadata about the offered resource, and hence make this available to the VP via the VP Index.**
	  - Resource discoverability via open metadata
	  - FAIR Data Point specification, EJP RD metadata schema
	  - Open Access
	  - What are the URLs of Catalogs that allow deeper queries? What are the available biobanks? What are the available patient registries?


| `Level 2 - Content-based discovery <https://vp-onboarding-doc.readthedocs.io/en/latest/level_2/index.html>`_
| **Prerequisite: Level 1 connectivity**

.. list-table::
	:widths: 20 20 20 20 20
	:header-rows: 1

	* - Description
	  - Contributes to
	  - Technology Requirements
	  - Access condition options
	  - Example Queries
	* - **At this level, a resource is identified based on remote queries regarding its characteristics and content, responding with yes/no or approximate record count information. The questions are answered against summary metadata and safe content of each catalogue/resource.**
	  - Resource discoverability via controlled querying of catalogue/resource summary info and/or safe resource record data
	  - EJP RD Beacon v2 API implementation
	  - Open or authenticated user access, as per the preference of each resource
	  - ‎ ‎ 
	* - **Level 2 – Querying at the catalogue/resource level**
	  - Involves answering queries based on the summary level metadata of RD resources
	  - EJP RD queryable metadata
	  - Open user access
	  - Is the catalogue associated with the Marfan syndrome [ordo:Orphanet_558]?
	* - **Level 2 - Querying at safe-record level**
	  - Entails answering queries based on individual records of resource data.
	  - EJP RD queryable data (obfuscated record data)
	  - Open or authenticated user access, as per the preference of each resource
	  - Find resources based upon how many patients have Autosomal recessive polycystic kidney disease [ORPHA:731] and had symptom onset before 8 years old?


| `Level 3 - Data analysis <https://vp-onboarding-doc.readthedocs.io/en/latest/level_2/index.html>`_
| **Prerequisite: Level 1 connectivity**

.. list-table::
	:widths: 20 20 20 20 20
	:header-rows: 1

	* - Description
	  - Contributes to
	  - Technology Requirements
	  - Access condition options
	  - Example Queries
	* - **At this level, the provider commits to support interrogation and analysis on its resource's rich content.**
	  - Data reuse and analysis
	  - SPARQL, FAIR Data Train, Data available according to the Clinical And Registry Entries Semantic Model (CARE-SM)
	  - Open access, Authentication, Authorization
	  - Training a prediction model on distributed data.


