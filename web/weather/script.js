const locationButton = document.querySelector(".location-btn");
const apikey=`659042421a770f2ac38e68e8cdcbbc10`;


locationButton.addEventListener("click",async()=> 
navigator.geolocation.getCurrentPosition(
     position => {
        const { latitude, longitude} = position.coords; 
        const API_URL = `https://api.openweathermap.org/geo/1.0/reverse?lat=${latitude}&lon=${longitude}&appid=${apikey}`;
        const url= `http://api.openweathermap.org/data/2.5/weather?lat=${latitude}&` + `lon=${longitude}&appid=${apikey}`;

        fetch(API_URL).then(response => response.json()).then(data => {
            const { name } = data[0];
        })

             fetch(url).then((res)=>{
             return res.json();
             }).then((data)=>{
             console.log(data);
             console.log(new Date().getTime())
             var dat= new Date(data.dt)
             console.log(dat.toLocaleString(undefined,'Asia/Kolkata'))
             console.log(new Date().getMinutes())
             weatherReport(data);
             }).catch(() => {
            alert("An error occurred while fetching the city name!");
        })
     },
    
    error => { 
        if (error.code === error.PERMISSION_DENIED) {
            alert("Geolocation request denied. Please reset location permission to grant access again.");
        } else {
            alert("Geolocation request error. Please reset location permission.");
        }
    }),

        { maximumAge: 0,
          timeout: 30000,
          enableHighAccuracy: true,}
    
)


function searchByCity(){
    var place= document.getElementById('input').value;
    var urlsearch= `http://api.openweathermap.org/data/2.5/weather?q=${place}&` + `appid=${apikey}`;

    fetch(urlsearch).then((res)=>{
        return res.json();
    }).then((data)=>{
        console.log(data);
        weatherReport(data);
    })
    document.getElementById('input').value='';
}
    

function weatherReport(data){

    var urlcast= `http://api.openweathermap.org/data/2.5/forecast?q=${data.name}&` + `appid=${apikey}`;
    fetch(urlcast).then((res)=>{
        return res.json();
    }).then((forecast)=>{
        console.log(forecast.city);
        hourForecast(forecast);
        dayForecast(forecast)

        console.log(data);
       document.getElementById('city').innerText= data.coord.lat + ', '+ data.coord.lon;
        console.log(data.name,data.sys.country);
    
        console.log(Math.floor(data.main.temp-273));
        document.getElementById('temperature').innerText= Math.floor(data.main.temp-273)+ ' °C';
        let weatherType = document.getElementById('clouds');
        weatherType.innerText= data.weather[0].main;
        console.log(data.weather[0].main)
        
        let icon1= data.weather[0].icon;
        let iconurl= "http://api.openweathermap.org/img/w/"+ icon1 +".png";
        document.getElementById('img').src=iconurl
        
    })
    let weatherType = document.getElementById('clouds');
     weatherType.innerText= data.weather[0].main;

    if(weatherType.textContent == 'Clear') {
        document.body.style.background = "url('./clear.jpg')";
        document.body.style.backgroundRepeat="no-repeat";
        document.body.style.backgroundSize="cover";
        document.body.style.backgroundAttachment="fixed";
        console.log('yes');
        
    } else if(weatherType.textContent == 'Clouds') {

        document.querySelector('.weather2').style.background = "url('./cloud.jpg')";
        document.querySelector('.weather2').style.backgroundRepeat="no-repeat";
        document.querySelector('.weather2').style.backgroundSize="cover";
        document.querySelector('.weather2').style.backgroundAttachment="fixed";
        console.log('yes');
        
    } else if(weatherType.textContent == 'Haze') {

        document.querySelector('.weather2').style.background = "url('./haze.jpg')";
        document.querySelector('.weather2').style.backgroundRepeat="no-repeat";
        document.querySelector('.weather2').style.backgroundSize="cover";
        document.querySelector('.weather2').style.backgroundAttachment="fixed";
        
    }     else if(weatherType.textContent == 'Rain') {
        
        document.querySelector('.weather2').style.background = "url('./rain.jpg')";
        document.querySelector('.weather2').style.backgroundRepeat="no-repeat";
        document.querySelector('.weather2').style.backgroundSize="cover";
        document.querySelector('.weather2').style.backgroundAttachment="fixed";
        
    } else if(weatherType.textContent == 'Snow') {
        
        document.querySelector('.weather2').style.background = "url('./snow.png')";
        document.querySelector('.weather2').style.backgroundRepeat="no-repeat";
        document.querySelector('.weather2').style.backgroundSize="cover";
        document.querySelector('.weather2').style.backgroundAttachment="fixed";
    
    } else if(weatherType.textContent == 'Thunderstorm') {
    
        document.querySelector('.weather2').style.background = "url('./thunderstorm.png')";
        document.querySelector('.weather2').style.backgroundRepeat="no-repeat";
        document.querySelector('.weather2').style.backgroundSize="cover";
        document.querySelector('.weather2').style.backgroundAttachment="fixed";
        
    }  else if(weatherType.textContent == 'Smoke') {
    
        document.querySelector('.weather2').style.background = "url('./smoke.png')";
        document.querySelector('.weather2').style.backgroundRepeat="no-repeat";
        docuelsement.querySelector('.weather2').style.backgroundSize="cover";
        document.querySelector('.weather2').style.backgroundAttachment="fixed";
    }  else if(weatherType.textContent == 'Mist') {
    
        document.querySelector('.weather2').style.background = "url('./mist.png')";
        document.querySelector('.weather2').style.backgroundRepeat="no-repeat";
        docuelsement.querySelector('.weather2').style.backgroundSize="cover";
        document.querySelector('.weather2').style.backgroundAttachment="fixed";
    } 
}
function hourForecast(forecast){
    document.querySelector('.templist').innerHTML=''
    for (let i = 0; i < 5; i++) {

        var date= new Date(forecast.list[i].dt*1000)
        console.log((date.toLocaleTimeString(undefined,'Asia/Kolkata')).replace(':00',''))

        let hourR=document.createElement('div');
        hourR.setAttribute('class','next');

        let div= document.createElement('div');
        let time= document.createElement('p');
        time.setAttribute('class','time')
        time.innerText= (date.toLocaleTimeString(undefined,'Asia/Kolkata')).replace(':00','');

        let temp= document.createElement('p');
        temp.innerText= Math.floor((forecast.list[i].main.temp_max - 273))+ ' °C' + ' / ' + Math.floor((forecast.list[i].main.temp_min - 273))+ ' °C';

        div.appendChild(time)
        div.appendChild(temp)

        let desc= document.createElement('p');
        desc.setAttribute('class','desc')
        desc.innerText= forecast.list[i].weather[0].description;

        hourR.appendChild(div);
        hourR.appendChild(desc)
        document.querySelector('.templist').appendChild(hourR);
}
}

function dayForecast(forecast){
    document.querySelector('.weekF').innerHTML=''
    for (let i = 8; i < forecast.list.length; i+=8) {
        console.log(forecast.list[i]);
        let div= document.createElement('div');
        div.setAttribute('class','dayF');
        
        let day= document.createElement('p');
        day.setAttribute('class','date')
        day.innerText= new Date(forecast.list[i].dt*1000).toDateString(undefined,'Asia/Kolkata');
        div.appendChild(day);

        let temp= document.createElement('p');
        temp.innerText= Math.floor((forecast.list[i].main.temp_max - 273))+ ' °C' + ' / ' + Math.floor((forecast.list[i].main.temp_min - 273))+ ' °C';
        div.appendChild(temp)

        let description= document.createElement('p');
        description.setAttribute('class','desc')
        description.innerText= forecast.list[i].weather[0].description;
        div.appendChild(description);

        document.querySelector('.weekF').appendChild(div)
    }
} 
