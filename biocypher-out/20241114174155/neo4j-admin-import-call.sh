#!/bin/bash
version=$(bin/neo4j-admin --version | cut -d '.' -f 1)
if [[ $version -ge 5 ]]; then
	bin/neo4j-admin database import full --delimiter="\t" --array-delimiter="|" --quote="'" --overwrite-destination=true --skip-bad-relationships=true --skip-duplicate-nodes=true --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/Schema_info-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/Schema_info-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/Trait-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/Trait-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/ObservationUnit-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/ObservationUnit-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/Investigation-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/Investigation-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/BiologicalMaterial-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/BiologicalMaterial-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/Study-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/Study-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/Sample-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/Sample-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/HasBiologicalMaterial-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/HasBiologicalMaterial-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/DerivesFrom-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/DerivesFrom-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/HasTrait-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/HasTrait-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/PartOf-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/PartOf-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/HasPart-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/HasPart-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/HasVariable-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/HasVariable-part.*" neo4j 
else
	bin/neo4j-admin import --delimiter="\t" --array-delimiter="|" --quote="'" --force=true --skip-bad-relationships=true --skip-duplicate-nodes=true --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/Schema_info-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/Schema_info-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/Trait-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/Trait-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/ObservationUnit-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/ObservationUnit-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/Investigation-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/Investigation-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/BiologicalMaterial-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/BiologicalMaterial-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/Study-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/Study-part.*" --nodes="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/Sample-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/Sample-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/HasBiologicalMaterial-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/HasBiologicalMaterial-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/DerivesFrom-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/DerivesFrom-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/HasTrait-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/HasTrait-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/PartOf-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/PartOf-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/HasPart-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/HasPart-part.*" --relationships="/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/HasVariable-header.csv,/Users/brunocosta/git/bioCypher/project-template/biocypher-out/20241114174155/HasVariable-part.*" --database=neo4j 
fi