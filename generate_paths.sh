#!/bin/bash

# Base directory for the files
BASE_DIR="generated_docs"

# Create base directory if it doesn't exist
mkdir -p $BASE_DIR

# Function to create a file with sample content
create_file() {
  local filepath="$1"
  local content="# $filepath\n\nsample content"
  
  # Create directory structure
  mkdir -p "$(dirname "$filepath")"
  
  # Write content to file
  echo -e "$content" > "$filepath"
}

# Generate files for each path in the JSON structure
create_file "$BASE_DIR/overview.mdx"
create_file "$BASE_DIR/getting-started.mdx"
create_file "$BASE_DIR/easy-deployment-terraform.mdx"
create_file "$BASE_DIR/creating-new-assistant.mdx"
create_file "$BASE_DIR/deploying-changes-terraform.mdx"
create_file "$BASE_DIR/usecases/creating-zoho-assistant.mdx"
create_file "$BASE_DIR/usecases/creating-jira-assistant.mdx"
create_file "$BASE_DIR/usecases/creating-github-assistant.mdx"
create_file "$BASE_DIR/usecases/custom-dashboard.mdx"
create_file "$BASE_DIR/usecases/executive-dashboard.mdx"
create_file "$BASE_DIR/usecases/manager-dashboard.mdx"
create_file "$BASE_DIR/usecases/developer-dashboard.mdx"
create_file "$BASE_DIR/guides/creating-new-assistant.mdx"
create_file "$BASE_DIR/guides/adding-integrations.mdx"
create_file "$BASE_DIR/integrations/zoho.mdx"
create_file "$BASE_DIR/integrations/jira.mdx"
create_file "$BASE_DIR/integrations/github.mdx"
create_file "$BASE_DIR/integrations/custom-ingestion.mdx"
create_file "$BASE_DIR/concepts/orchestrators.mdx"
create_file "$BASE_DIR/concepts/default-orchestrator.mdx"
create_file "$BASE_DIR/concepts/assistants.mdx"
create_file "$BASE_DIR/concepts/default-assistant.mdx"
create_file "$BASE_DIR/concepts/tool-assistant.mdx"
create_file "$BASE_DIR/concepts/bedrock-guardrails.mdx"
create_file "$BASE_DIR/concepts/plugins-and-tools.mdx"
create_file "$BASE_DIR/concepts/llms.mdx"
create_file "$BASE_DIR/concepts/bedrock-llm.mdx"
create_file "$BASE_DIR/concepts/openai-llm.mdx"
create_file "$BASE_DIR/concepts/anthropic-llm.mdx"
create_file "$BASE_DIR/concepts/retrievers.mdx"
create_file "$BASE_DIR/codebase/overview.mdx"
create_file "$BASE_DIR/codebase/observability.mdx"
create_file "$BASE_DIR/codebase/testing.mdx"
create_file "$BASE_DIR/architecture/vector-db.mdx"
create_file "$BASE_DIR/architecture/assistant-configurations.mdx"
create_file "$BASE_DIR/architecture/server.mdx"
create_file "$BASE_DIR/architecture/observability-testing.mdx"

echo "All paths generated with sample content in the $BASE_DIR directory."
