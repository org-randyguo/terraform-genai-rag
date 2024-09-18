terraform {
  backend "gcs" {
      bucket  = "test-project-ai-435808-terraform-state"
      prefix  = "rag"
    }
}