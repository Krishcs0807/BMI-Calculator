const form =document.querySelector('#form')
const height =document.querySelector('#height')
const weight =document.querySelector('#weight')
form.addEventListener('submit',(e)=>{
    
    

    if(!validateInputs()){
        e.preventDefault()
    }
})


function validateInputs(){
    const heightval=height.value.trim();
    const weightval=weight.value.trim();
    let success=true;
    var expression = new RegExp('^[0-9]+$');
    if(heightval===''){
        success=false;
        seterror(height,'*height is required*')
    }
    else if(!expression.test(heightval)){
        success=false;
        seterror(height,'*Number value only required*')
    }else{
        setsuccess(height)
    }

    if(weightval===''){
        success=false;
        seterror(weight,"*weight is required*")
    }
    else if(!expression.test(weightval)){
        success=false;
        seterror(weight,"*Number value only required*")
    }
        else{
            setsuccess(weight)
    }

    return success;

}

function seterror(element,message){
    const inputgroup=element.parentElement;
    const errorelement=inputgroup.querySelector('.error')

    errorelement.innerText=message;
    inputgroup.classList.add('error')
    inputgroup.classList.remove('success')
}
function setsuccess(element){
    const inputgroup=element.parentElement;
    const errorelement=inputgroup.querySelector('.error')

    errorelement.innerText='';
    inputgroup.classList.add('success')
    inputgroup.classList.remove('error')
}