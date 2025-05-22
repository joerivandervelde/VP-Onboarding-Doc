Content-Based Discovery at /catalogs Level
------------------------------------------

At the /catalog level, answers are derived from summary metadata about the entities listed within a resource (typically a catalog or a resource that contains multiple sub-resources). The following table shows an overview of the filters used at the /catalog level, as defined in the EJP RD VP API Specification [`link <https://github.com/ejp-rd-vp/vp-api-specs>`__].

The filters shown in the table below can be applied to a query to only show certain results. 

.. list-table:: **Filters supported by the API endpoint:** `/catalogs (click for the full specification) <https://github.com/ejp-rd-vp/vp-api-specs#-catalogs-endpoint->`_
	:widths: 20 20 20 20 20
	:header-rows: 1

	* - Metadata Concept
	  - EJP RD Beacon v2 API Filter Term
	  - Usage notes
	  - EJP RD Beacon v2 Filter Type
	  - Expected Response
	* - **Disease or Disorder**
	  - dcat:theme	
	  - All RDs that are associated within a catalog
	  - Ontology
	  - Result set with metadata
	* - **Phenotype**
	  - sio:phenotype
	  - HPO terms of all phenotypes observed within a catalog of RD resources
	  - Ontology
	  - Result set or counts
	* - **Resource Types**
	  - rdf:type
	  - Types of resources within the catalog	
	  - Alphanumerical
	  - Result set
	* - **ID**
	  -	
	  - The resource identifier ID within the catalog
	  - Alphanumerical
	  - Result set
	* - **Name**
	  - dcterms:title
	  - The name of the resource in the catalog	
	  - Alphanumerical
	  - Result set
	* - **Description**
	  - dcterms:description
	  - The description of the resource in the catalog	
	  - Alphanumerical
	  - Result set

Please note:

* Resources choose which filters (i.e., metadata concepts) they want to implement for their /catalogs endpoint.

