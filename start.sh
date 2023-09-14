START_FILE=$(readlink -f "$0")
BIN_DIR=$(dirname "$START_FILE")
NAMESPACE_NAME=$1

case "$1" in
    dev|prod|qa)
        echo "====================================================================="
        echo $NAMESPACE_NAME 'Starting Kubernetes Deployment'
        echo $START_FILE 'Starting Kubernetes Deployment'
        echo "====================================================================="
    ;;
    *)
		echo "Usage: $0 | Provide NAMESPACE_NAME Name {dev|prod|qa}"
		exit 1
	;;
esac
exit 0
