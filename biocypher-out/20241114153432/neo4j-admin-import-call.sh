#!/bin/bash
version=$(bin/neo4j-admin --version | cut -d '.' -f 1)
if [[ $version -ge 5 ]]; then
	bin/neo4j-admin database import full --delimiter="\t" --array-delimiter="|" --quote="'" --overwrite-destination=true --skip-bad-relationships=true --skip-duplicate-nodes=true --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/Study-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/Study-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/Investigation-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/Investigation-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/Trait-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/Trait-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/BiologicalMaterial-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/BiologicalMaterial-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/Sample-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/Sample-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/DerivesFrom-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/DerivesFrom-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/HasPart-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/HasPart-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/PartOf-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/PartOf-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/HasBiologicalMaterial-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/HasBiologicalMaterial-part.*" neo4j 
else
	bin/neo4j-admin import --delimiter="\t" --array-delimiter="|" --quote="'" --force=true --skip-bad-relationships=true --skip-duplicate-nodes=true --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/Study-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/Study-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/Investigation-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/Investigation-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/Trait-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/Trait-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/BiologicalMaterial-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/BiologicalMaterial-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/Sample-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/Sample-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/DerivesFrom-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/DerivesFrom-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/HasPart-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/HasPart-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/PartOf-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/PartOf-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/HasBiologicalMaterial-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114153432/HasBiologicalMaterial-part.*" --database=neo4j 
fi