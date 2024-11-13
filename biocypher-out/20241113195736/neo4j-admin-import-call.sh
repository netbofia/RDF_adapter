#!/bin/bash
version=$(bin/neo4j-admin --version | cut -d '.' -f 1)
if [[ $version -ge 5 ]]; then
	bin/neo4j-admin database import full --delimiter="\t" --array-delimiter="|" --quote="'" --overwrite-destination=true --skip-bad-relationships=true --skip-duplicate-nodes=true --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241113195736/Investigation-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241113195736/Investigation-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241113195736/Study-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241113195736/Study-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241113195736/HasPart-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241113195736/HasPart-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241113195736/PartOf-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241113195736/PartOf-part.*" neo4j 
else
	bin/neo4j-admin import --delimiter="\t" --array-delimiter="|" --quote="'" --force=true --skip-bad-relationships=true --skip-duplicate-nodes=true --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241113195736/Investigation-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241113195736/Investigation-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241113195736/Study-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241113195736/Study-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241113195736/HasPart-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241113195736/HasPart-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241113195736/PartOf-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241113195736/PartOf-part.*" --database=neo4j 
fi