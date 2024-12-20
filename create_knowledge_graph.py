from biocypher import BioCypher, Resource
from template_package.adapters.rdf_adapter import (
    RDF_Adapter, AdapterEdgeType
)
from rdflib import Graph


# ExampleAdapterNodeType,
# ExampleAdapterEdgeType,
# ExampleAdapterProteinField,
# ExampleAdapterDiseaseField,

# Instantiate the BioCypher interface
# You can use `config/biocypher_config.yaml` to configure the framework or
# supply settings via parameters below
bc = BioCypher()

# Download and cache resources (change the directory in the options if needed)
#urls = "https://file-examples.com/wp-content/storage/2017/02/file_example_CSV_5000.csv"
#resource = Resource(
#    name="Example resource",  # Name of the resource
#    url_s=urls,  # URL to the resource(s)
#    lifetime=7,  # seven days cache lifetime
#)


graph = Graph()

graph.parse("PPEO.nt", format="nt")





#paths = bc.download(resource)  # Downloads to '.cache' by default
#print(paths)
# You can use the list of paths returned to read the resource into your adapter

# Choose node types to include in the knowledge graph.
# These are defined in the adapter (`adapter.py`).
#node_types = [
#    ExampleAdapterNodeType.PROTEIN,
#    ExampleAdapterNodeType.DISEASE,
#]

# Choose protein adapter fields to include in the knowledge graph.
# These are defined in the adapter (`adapter.py`).
# Filteres the nodes
#node_fields = [
    # Proteins
    #ExampleAdapterProteinField.ID,
    #ExampleAdapterProteinField.SEQUENCE,
    #ExampleAdapterProteinField.DESCRIPTION,
    #ExampleAdapterProteinField.TAXON,
    # Diseases
    #ExampleAdapterDiseaseField.ID,
    #ExampleAdapterDiseaseField.NAME,
    #ExampleAdapterDiseaseField.DESCRIPTION,
#]

#Filters the edges
#edge_types = [
    #ExampleAdapterEdgeType.PROTEIN_DISEASE_ASSOCIATION,
#]

# Create a protein adapter instance
adapter = RDF_Adapter(
    triples=graph
    # node_types=node_types
    # node_fields=node_fields,
    # edge_types=edge_types
    # we can leave edge fields empty, defaulting to all fields in the adapter
)


# Create a knowledge graph from the adapter
bc.write_nodes(adapter.get_nodes())
bc.write_edges(adapter.get_edges())

# Write admin import statement
bc.write_import_call()
bc.write_schema_info(as_node=True)

# Print summary
# bc.summary()
