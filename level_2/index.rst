Level 2: Content-based Discovery
================================

Requirements to achieve level 2
-------------------------------

Implementing Level 2 requires that a Level 1 connection is already established. Level 2 enables the discovery of resources by remote querying of aggregated descriptive information, and/or a limited amount of anonymous record information. This latter is provided either as safe/obfuscated record level data or aggregating/counting queries over record-level data. When querying at this level, the response can provide yes/no answers, metadata, or record counts (which can be thresholded or windowed) and will not expose the underlying data. For example, for the query ‘How many patients are defined with a certain Human Phenotype Ontology (HPO) code in the dataset?’, the answer would just be an approximate count of patients. This information can be valuable for researchers to assess whether a resource is likely to have relevant data for their research question based on their respective study design and methodology.

In Level 2, the focus shifts from merely publishing organisational metadata of a resource to uncovering valuable insights about the resource based on deeper exploration of its nature and contents, enabling researchers to gauge resource suitability without revealing sensitive data. While this can be achieved in many ways, the VP specifically supports (and requires) the Beacon2 interface, and has tooling to help providers implement Beacon2 over their data (e.g. RD Nexus or FiaB) . The **EJP RD Beacon v4 API** [`link <https://github.com/ejp-rd-vp/vp-api-specs/tree/v4.0_spec>`__], operates at two levels depending on the resource type:

#. **/catalogs endpoint:** Involves queries based on summary metadata about a resource, and this is most suitable for the querying of catalogues (I.e., resources whose content comprises of lists of other resources).
#. **/individuals endpoint:** Entails queries based on safe exploration of records within a resource, and this is most suitable for querying of individual registries, biobanks and knowledge bases (i.e., resources with data about entities such as patients, biosamples, cell lines, etc).

To be queryable at this level, the resource must follow the **EJP RD Beacon v4 framework** [`link <https://github.com/ejp-rd-vp/vp-api-specs/tree/v4.0_spec>`__], allowing querying at an aggregated level while preserving data privacy. The data elements queried at this level are based on the Common Data Elements (CDEs) for rare disease registration [`link <https://eu-rd-platform.jrc.ec.europa.eu/sites/default/files/CDS/EU_RD_Platform_CDS_Final.pdf>`__].

Beacon v4 itself consists of two components: the Framework and the Models. The Framework contains the format for the requests and responses, whereas the Models define the structure of the data response. In the context of EJP RD VP Level 2 querying, the queried summary metadata (catalog level) and safe data (record level) can be provided in any convenient format. 

The objective is to expose an interface through which users can query a resource. Beacon v4 interfaces have formal, machine-readable definitions that follow the OpenAPI Specification, that defines the capabilities of the API. Content-based discovery queries can be initiated from any query point in the VP network (e.g., the EJP RD VP portal) by a Beacon-based API as long as the resource has exposed suitable safe information following the EJP RD Beacon v4 framework with the filters and models described in the EJP RD VP API specification [`link <https://github.com/ejp-rd-vp/vp-api-specs/tree/v4.0_spec>`__]. These filters are briefly described below.

Level 2 endpoint types: /catalogs and /individuals
--------------------------------------------------

The /catalogs endpoint and the /individuals endpoint have different filters to query the exposed data. Results of queries from both endpoints will only be aggregated data and will not reveal sensitive information.



.. toctree::
   :maxdepth: 1
   :caption: Contents:

   catalogs_level
   individuals_level
   vp_api
   post_onboard
