Patient Registries
~~~~~~~~~~~~~~~~~~

**Mandatory Properties**


.. list-table:: 
	:widths: 20 60 20
	:header-rows: 1

	* - Property
	  - Definition and usage note
	  - URI
	* - **License**
	  - This should contain a URL that provides details regarding the license that is applicable to this resource. If no suitable license can be provided, then the default license should be used: `https://w3id.org/ejp-rd/resources/licenses/v1.0/ <https://w3id.org/ejp-rd/resources/licenses/v1.0/>`_. Other licenses are: `Creative Commons <https://creativecommons.org/licenses/>`_, e.g. `CC BY-NC-ND 4.0 Deed <http://creativecommons.org/licenses/by-nc-nd/4.0>`_
	  - | dcterms:license
	* - **Title**
	  - The name of the patient registry. This is a required field and needs to be unique.
	  - | dcterms:title
	* - **Description**
	  - A description of the patient registry.
	  - | dcterms:description
	* - **Theme**
	  - Points to an URL that specifies relevant ontology concepts that classify the patient registry. Typically, these can be looked up using the `Ontology Lookup Service (OLS) <https://www.ebi.ac.uk/ols/index>`_ or Bioportal.
	  - | dcterms:theme
	* - **Keyword**
	  - Keywords applicable to this patient registry
	  - | dcat:keyword
	* - **Publisher**
	  - Pointer to the Organisation that published the resource. The range is foaf:Organisation
	  - | dcterms:publisher
	* - **Contact Point**
	  - Pointer to a Contact Point, Range is vCard
	  - | dcat:contactPoint
	* - **Personal data**
	  - Set to "true" if the resource onboarded to the Virtual Platform contains personal data, personal data meaning data related to identified or identifiable persons (as per GDPR definition), otherwise "false". Range is string.
	  - | ejprd:personalData
	* - **Population Coverage**
	  - Gives an indication of the part of the population covered by this patient registry. This field must have 1 of the following values: "National", "International", "Regional" or "European". String
	  - | ejprd:populationCoverage
	* - **Language**
	  - An ISO 639-1 two-letter code for the languages this patient registry is provided in. Example: en indicates that this patient registry is available in English. The range is an xsd:string. The ISO language codes can be found at: `ISO639-1 <https://id.loc.gov/vocabulary/iso639-1.html>`_ and `an example <http://id.loc.gov/vocabulary/iso639-1/en>`_.
	  - | dcterms:language  


**Recommended Properties**

.. list-table::
	:widths: 20 60 20
	:header-rows: 1

	* - Property
	  - Definition and usage note
	  - URI
	* - **Access Rights**
	  - Information about who can access the resource or an indication of its security status. This should point to a URL where this information can be found. We strongly recommend that access rights are described as `DUC CCE <https://duc.le.ac.uk/>`_ profile.
	  - | dcterms:accessRights
	* - **Landing Page**
	  - This a URL to a web page with more information regarding the Patient Registry. Any URL must start with http:// or https://   
	  - | dcat:landingPage


**Optional Properties**

.. list-table::
	:widths: 20 60 20
	:header-rows: 1

	* - Property
	  - Definition and usage note
	  - URI
	* - **VP Connection**
	  - This property is attached to every portion of your Metadata record that you wish the VP to explore (e.g. Dataset X, Data Service Y, but NOT Dataset Z). **If you do not add this tag to at least the description of your resource, you will not be onboarded.** The range is `https://w3id.org/ejp-rd/vocabulary#VPDiscoverable <https://w3id.org/ejp-rd/vocabulary#VPDiscoverable>`_ 
	  - | ejprd:vpConnection
	* - **Logo**
	  - A link to the graphic representation of this resource.
	  - | foaf:logo
	* - **ODRL Policy**
	  - An ODRL conformant policy document (`https://www.w3.org/TR/odrl-model/ <https://www.w3.org/TR/odrl-model/>`_) expressing the rights and/or responsibilities associated with access to and/or use of the resource. This should point to a URL where this conformant document has been published.
	  - | odrl:hasPolicy
	* - **Distribution**
	  - Pointer to an associated Distribution of this dataset, if available. Range dcat:Distribution.
	  - | dcat:distribution
	* - **identifier**
	  - Identifier of this resource. It can be a link.  Range is an xsd:string
	  - | dcterms:identifier
	* - **issued**
	  - This resource publication date. The range is xsd:date
	  - | dcterms:issued
	* - **modified**
	  - This resource last revision date. The range is xsd:date
	  - | dcterms:modified
	* - **version**
	  - The version indicator (name or identifier) of a resource. The range is a rdfs:literal
	  - | dcat:version
	* - **Conforms to**
	  - If applicable, it should point to the URL, an established standard to which the data within the described resource conforms (e.g. MAGE-ML for Microarray data)
	  - | dcterms:conformsTo


