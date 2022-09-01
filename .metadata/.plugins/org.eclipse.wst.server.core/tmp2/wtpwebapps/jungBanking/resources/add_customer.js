function mobile_keyup(obj){
    let mobile_len=obj.value.length;
    console.log(mobile_len)
    if(event.keyCode==8){
        obj.value=obj.value.slice(0,mobile_len); 
        return 0; 
    }else if (mobile_len==3 || mobile_len==8){
        obj.value += '-';
    }
}

function birth_keyup(obj){
    let birth_len = obj.value.length;
    if (event.keyCode==8){
        obj.value = obj.value.slice(0,birth_len)
        return 0;
    }else if(birth_len==6 || birth_len==7){
        obj.value += '-';
    }
}

