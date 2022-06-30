
const addressButton = document.getElementById('addres-button')
const sectionForm = document.getElementById('new-contact-info')


addressButton.addEventListener('click', (e)=>{
    e.preventDefault()
    const newDiv = document.createElement('div')
    newDiv.className = 'info-line'
    newDiv.innerHTML= `
    <i class="fas fa-map-marker-alt icon-gradient location"></i>
    <input type="text" class="type" name="address-1" placeholder="Adress 1">
    `
    const newDiv1 = document.createElement('div')
    newDiv1.className = 'info-line'
    newDiv1.innerHTML= `
    <i class="fas fa-map-marker-alt icon-gradient location"></i>
    <input type="text" class="type" name="address-2" placeholder="Adress 2">
    `
    const newDiv2 = document.createElement('div')
    newDiv2.className = 'info-line'
    newDiv2.innerHTML= `
    <i class="fas fa-map-marker-alt icon-gradient location"></i>
    <input type="text" class="type" name="city" placeholder="City">
    `
    sectionForm.appendChild(newDiv)
    sectionForm.appendChild(newDiv1)
    sectionForm.appendChild(newDiv2)

})

