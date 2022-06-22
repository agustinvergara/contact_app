let initialState = {
    fullname: '',   
    phoneNumber:'',
    email: '',
}
const inputFullname = document.getElementById('fullname')
const inputPhone = document.getElementById('phone')
const inputEmail = document.getElementById('email')


inputFullname.addEventListener('change', (e)=> {
    initialState= {
        ...initialState,
        fullname: e.target.value
    }
    console.log(initialState)
    window.localStorage.setItem('fullname', initialState.fullname)   

})

inputPhone.addEventListener('change', (e)=> {
    initialState= {
        ...initialState,
        phoneNumber: e.target.value
    }
    console.log(initialState)
    window.localStorage.setItem('phoneNumber', initialState.phoneNumber)   
})
inputEmail.addEventListener('change', (e)=> {
    initialState= {
        ...initialState,
        email: e.target.value
    }
    console.log(initialState) 
    window.localStorage.setItem('email', initialState.email)  
})

if(window.navigation.currentEntry.url == 'http://127.0.0.1:8000/contact/add-contact/'){
    inputFullname.value = window.localStorage.getItem('fullname')
    inputEmail.value = window.localStorage.getItem('email')
    inputPhone.value = window.localStorage.getItem('phoneNumber')

} 


console.log(window.navigation.currentEntry.url)