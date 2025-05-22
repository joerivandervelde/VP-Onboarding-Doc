Content-Based Discovery at /individuals Level
---------------------------------------------

This allows querying based on safe versions of individual records within the resource's data. This "record-level" querying takes is powerful, in that enables researchers to extract valuable insights from resources without compromising data privacy. Indeed, if this capability is implemented via certain of the EJP RD solutions (RD-Nexus, Molgenis) a resource can optionally extend the scope and power of their discovery services to enable private networks, specialised permissions for users, and even full record discovery in other projects should they wish to do so. In the EJP RD setting, we only query content as per the EJP RD Beacon v2 API specification, and the resource has the option of responding only if the user has been authenticated (logged in) via the VP. The queried content is based on the recommended CDEs and discussions with several rare disease partners. The following table shows an overview of the filters used at the record level, as defined in the EJP RD VP API Specification [`link <https://github.com/ejp-rd-vp/vp-api-specs>`__]. This endpoint is most suitable for querying individual registries, biobanks and knowledge bases (i.e., resources with data about entities such as patients, biosamples, cell lines, etc).

The filters shown in the table below can be applied to a query to only show certain results. 

.. list-table:: **Filters supported by the API endpoint:** `/individuals (click for the full specification) <https://github.com/ejp-rd-vp/vp-api-specs#-individuals-endpoint>`_
	:widths: 20 20 20 20 20
	:header-rows: 1

	* - CDE Concept
	  - CDE Term
	  - Usage notes
	  - EJP RD Beacon v2 Filter Type
	  - Expected Response
	* - **Sex**
	  - obo:NCIT_C28421 (Sex)
	  - The biological sex of an individual patient
	  - Alphanumerical
	  - Counts
	* - **Disease or Disorder**
	  - obo:NCIT_C2991(Disease or Disorder)
	  - All rare diseases that have been diagnosed within an individual	
	  - Ontology
	  - Counts
	* - Phenotype	
	  - sio:phenotype
	  - HPO terms of all phenotypes observed within an individual
	  - Ontology
	  - Result set or counts
	* - **Causative Genes**
	  - edam:data_2295 (Gene ID)
	  - All genes which have been deemed as causative of one or more of the diagnosed rare diseases in an individual
	  - Alphanumerical
	  - Counts
	* - Age this year
	  - obo:NCIT_C83164 (Birth Year)
	  - Age at the end of the current year
	  - Numerical
	  - Counts
	* - Symptom Onset
	  - obo:NCIT_C124353 (Symptom Onset)
	  - Age at the manifestation of a rare disease
	  - Numerical
	  - Counts
	* - **Age at diagnosis**
	  - obo:NCIT_C156420 (Age at Diagnosis)
	  - Age at the diagnosis of a rare disease
	  - Numerical
	  - Counts

Please note:

* Resources choose which filters (i.e., CDEs) they want to implement for their /individuals endpoint.


