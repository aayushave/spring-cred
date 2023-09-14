@echo off

SET NAMESPACE_NAME=%~1
IF "%~1"=="dev" (
  echo "====================================================================="
  echo "%NAMESPACE_NAME%" "Starting Kubernetes Deployment"
  echo "%START_FILE%" "Starting Kubernetes Deployment"
  echo "====================================================================="
) ELSE (
  echo "Usage: %~0 | Provide NAMESPACE_NAME Name {dev|prod|qa}"
  exit "1"
)
exit "0"
