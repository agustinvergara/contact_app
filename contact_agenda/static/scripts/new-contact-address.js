let address = {
    address1: '',
    address2: '',
    city: '',
}

const inputAddres1 = document.getElementById('address1')
const inputAddres2 = document.getElementById('address2')
const inputCity = document.getElementById('city')

inputAddres1.addEventListener('change', (e)=> {
    address= {
        ...address,
        address1: e.target.value
    }
    console.log(address)
    window.localStorage.setItem('address1', address.address1)   

})

inputAddres2.addEventListener('change', (e)=> {
    address= {
        ...address,
        address2: e.target.value
    }
    console.log(address)
    window.localStorage.setItem('address2', address.address2)   
})
inputCity.addEventListener('change', (e)=> {
    address= {
        ...address,
        city: e.target.value
    }
    console.log(address) 
    window.localStorage.setItem('city', address.city)  
})


console.log(address)