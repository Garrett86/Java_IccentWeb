
let http = new XMLHttpRequest();

http.open('get','sale.json',true);

http.send()

http.onload = function (){
    if(this.readyState == 4 && this.status == 200){
        let sales = JSON.parse(this.responseText);

        let output ="";
        for(let item of sales){
            output +=`  
            <div class="col">
                <img class="img_sale" src="${item.images}" alt="${item.title}">
            </div>
            `;
        }
        document.querySelector(".sales").innerHTML =output;
    }
}
