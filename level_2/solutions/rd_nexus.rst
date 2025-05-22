RD-Nexus for Level 2 onboarding
-------------------------------

Enabling Level 2 via RD-Nexus, powered by Café Variome, involves a sequence of guided steps(support provided), to ensuring the integration aligns with the Virtual Platform's standards:

#. **Meet System Requirements and Repository Cloning:** This solution can be hosted for you at the University of Leicester (prior to subsequent local transfer, or for the longer term) or installed upon your own standard LAMP (Linux, Apache, MySQL, PHP/Perl/Python) server conforming to system prerequisites [`link <https://cafe-variome.gitbook.io/cafe-variome-docs/how-to-install-it/system-requirements>`__] and cloning the RD-Nexus repository [`link <https://github.com/Cafe-Variome/CafeVariome.git>`__] to initiate the installation process.

#. **Installation Validation:** Carefully review the installation checklist [`link <https://cafe-variome.gitbook.io/cafe-variome-docs/how-to-install-it/installing-cafe-variome#installation-checklist>`__] to ensure every aspect is met for a seamless installation [`link <https://cafe-variome.gitbook.io/cafe-variome-docs/how-to-install-it/installing-cafe-variome>`__] process.

#. **Configuration and Setup:** Configure your RD-Nexus installation (with available assistance) by uploading the pertinent data and completing minimal setup [`link <https://cafe-variome.gitbook.io/cafe-variome-docs/how-to-install-it/quick-start#setup-instructions>`__] required for data discovery. This encompasses tasks like safe/obfuscated data uploading, associating data sources with the discoverable network, and generating MongoDB or Elasticsearch or Neo4j indexes as necessary. Admin interfaces & functions are provided for all these steps.

#. **Filtering Terms Mapping:** Provide a list of terms that your resource will support. This can encompass terms from the /catalogs endpoint, /individuals endpoint, or a combination of both. This step involves editing a provided template for filtering terms [`link <https://github.com/Cafe-Variome/CafeVariome/blob/master/resources/beacon/filtering_terms.json>`__] and mapping dataset term names to the corresponding filtering terms.

#. **Integration Finalization:** Once the setup is concluded, furnish the base URL of your /catalogs or /individuals endpoint(s) to the onboarding team. This inclusion in the VP-Portal ensures your resource's visibility and discoverability within the platform.
