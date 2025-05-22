DYI: EJP RD Beacon v2 DIY approach for Level 2 onboarding
---------------------------------------------------------

Two elements are needed to implement (or "light") an EJP RD Beacon v2: 

* An internal **database** (where the resource data is stored).
* An EJP RD **Beacon v2 API** that provides a standardized way to send queries and receive responses (containing yes/no, counts or data).

Relevant Links to creating & customising your DIY solution
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

* The EJP RD Beacon v2 API Specification to be followed, to be compliant with the VP Platform ecosystem: `link <https://github.com/ejp-rd-vp/vp-api-specs>`__
* About GA4GH Beacon: `link <https://docs.genomebeacons.org/>`__.
* CRG developed `B2RI <https://b2ri-documentation.readthedocs.io/en/latest/>`__ set of tools for when you want to "beaconize" your data to be part of the ecosystem, but you're unsure where to start, and/or don't want to invest a lot of resources because you are still unsure if the whole thing will pay off: `link <https://b2ri-documentation.readthedocs.io/en/latest/beacon-v2-reference-implementation/>`_. This solution requires the use of Docker, as opposed to the BiaB approach (non-docker) described above.

