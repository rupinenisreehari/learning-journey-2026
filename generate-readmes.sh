#!/bin/bash

YEAR=2026
REPO="Learning Journey $YEAR"

create_readme () {
  DIR=$1
  TITLE=$2
  DESC=$3

  if [ ! -f "$DIR/README.md" ]; then
    cat <<EOF > "$DIR/README.md"
# $TITLE

$DESC

## 📌 Goals
- Understand core concepts
- Perform hands-on labs
- Document learnings clearly

## 📂 Contents
This folder will contain notes, examples, and practical exercises.

## 🚀 Progress
Tracking my learning progress as part of **$REPO**.
EOF
  fi
}

# Root sections
create_readme "devops" "DevOps" "DevOps tools and practices for automation, CI/CD, and infrastructure."
create_readme "mlops" "MLOps" "End-to-end machine learning operations lifecycle."
create_readme "multi-cloud" "Multi-Cloud" "Learning and comparing AWS, Azure, and GCP."
create_readme "notes" "Notes" "Daily learning logs and important notes."

# DevOps tools
for tool in git docker kubernetes terraform ansible jenkins; do
  create_readme "devops/tools/$tool" "DevOps Tool: ${tool^}" "Hands-on learning and notes for $tool."
done

# DevOps practices
for practice in ci-cd monitoring security; do
  create_readme "devops/practices/$practice" "DevOps Practice: ${practice^^}" "Best practices and implementation of $practice."
done

# MLOps sections
for ml in fundamentals data-versioning model-training model-registry model-serving pipelines monitoring projects; do
  create_readme "mlops/$ml" "MLOps: ${ml//-/ }" "Learning and implementation of ${ml//-/ } in MLOps."
done

# Cloud providers
for cloud in aws azure gcp; do
  create_readme "multi-cloud/$cloud" "Cloud Platform: ${cloud^^}" "Cloud services, labs, and architecture using ${cloud^^}."
done

echo "✅ README.md files generated successfully"

