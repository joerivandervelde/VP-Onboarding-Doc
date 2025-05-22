FAIR-in-a-Box (FiaB) for Level 2 onboarding
-------------------------------------------

**It is important to note that FiaB is intended to be used to serve only one dataset, and thus, the Level 2 interfaces that are installed by FiaB are limited to achieve this task. If your resource contains multiple distinct datasets, that need to be queried independently, you cannot use FiaB for Level 2.**

To achieve Level 2 functionality, two distinct processes are required, each one focuses on enhance content discoverability for different entities. The following describes how the FiaB can be used to achieve this Level 2 connection for the two endpoints, catalogue and individual.

* **Catalogue content-based discovery:** 
    FiaB has implemented the EJP RD Beacon v2 API with the capability to retrieve data based on a triple store using SPARQL. The installation of FiaB is done as described in the Level 1 section.  The Level 2 (EJP RD Beacon v2) functionality is not activated by default, to ensure that you don’t accidentally expose data you did not intend to make available.  The EJP RD Beacon v2 functionality can be activated by adding the GraphDB username/password as environment variables, that are then picked-up by the EJP RD Beacon v2 docker image that is deployed with FiaB (see FiaB installation instructions for more detail).  To query the Beacon interface, send EJP RD Beacon v2 filter parameters (defined in the specification page [`link <https://github.com/ejp-rd-vp/vp-api-specs>`__]) to the endpoint defined in the EJP RD Beacon v2 docker image.

* **Record-level content-based discovery:** 
    To facilitate content discoverability within your record-level data, the FiaB database must first be populated with data following the CARE-SM model. FiaB implements a workflow based on CSV templates that can transform your data, from a CSV format file into an RDF-based format that is then stored in a protected GraphDB (triplestore to host RDF data) instance, that can be configured to be available for EJP RD Beacon v2 queries. These queries exclusively retrieve non-sensitive information, providing anonymous and secure counts for each query performed. Documentation regarding the CARE-SM implementation workflow can be found in [`link <https://github.com/CARE-SM/CARE-SM-Implementation>`__].
