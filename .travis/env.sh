env | sort | awk -v P="$1" 'BEGIN{FS=OFS="=";if(P!=""){P=P " "}}/ENCRYPTED|encrypted|TOKEN|password|PASSWORD/{$2="********"}{print P $0}'
