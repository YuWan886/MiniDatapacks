$data modify storage 53-mnc:event temp."$(UUID)" set value {UUID:$(UUID),type:1,num:1}
$data modify storage 53-mnc:event temp."$(UUID)" merge from storage 53-mnc:settings event_count

$function 53-mnc:utils/question/3 with storage 53-mnc:event temp."$(UUID)"

$function 53-mnc:utils/question/select with storage 53-mnc:event temp."$(UUID)"