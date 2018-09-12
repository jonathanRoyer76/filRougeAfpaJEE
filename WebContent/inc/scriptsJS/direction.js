$(document).ready(function(){

    // Définition des couleurs
    var couleurs = {
        rouge: 'rgba(255, 99, 132, 0.5)',
        orange: 'rgba(255, 159, 64, 0.5)',
        jaune: 'rgba(255, 205, 86, 0.5)',
        vert: 'rgba(75, 192, 192, 0.5)',
        bleu: 'rgba(54, 162, 235, 0.5)',
        violet: 'rgba(153, 102, 255, 0.5)',
        gris: 'rgba(201, 203, 207, 0.5)'
    };
    var couleursBordures = {
        rouge: 'rgba(255, 99, 132, 1)',
        orange: 'rgba(255, 159, 64, 1)',
        jaune: 'rgba(255, 205, 86, 1)',
        vert: 'rgba(75, 192, 192, 1)',
        bleu: 'rgba(54, 162, 235, 1)',
        violet: 'rgba(153, 102, 255, 1)',
        gris: 'rgba(201, 203, 207, 1)'
    };

    // Variables des stocks d'alerte
    var labelsProduitsAlert=[];
    var stockProduitsAlert=[];
    var stockMiniAlert=[];
    var stockObjectifAlert=[];

    lancement();

    function lancement(){
        stock_alert(function(retour){
            CAHT_mensuel();
        });
    }
      
    // Récupère les stocks en état d'alerte
    function stock_alert(callback){
        $.ajax({
            method: "GET",
            url: "http://localhost:8080/ExoJEEeCommerce/services?role=direction_stock_alert"
        }).done(function(listeProduits){
            for (var i=0; i<listeProduits.length; i++){
                labelsProduitsAlert[i]=listeProduits[i].nomProduit;   
                stockProduitsAlert[i]=listeProduits[i].quantiteStock;
                stockMiniAlert[i]=listeProduits[i].stockMinimum
                stockObjectifAlert[i]=listeProduits[i].stockObjectif     
            } 

            var ctx = document.getElementById("stocksAlert");  
            var myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                	labels: labelsProduitsAlert,
                    datasets: [{
                        label: 'Produits',
                        data: stockProduitsAlert,
                        backgroundColor: couleurs.rouge,
                        borderColor: couleursBordures.rouge,
                        borderWidth: 1
                    },{
                        type: 'bar',
                        label: 'Stock minimum',
                        data: stockMiniAlert,
                        backgroundColor: couleurs.violet,
                        borderColor: couleursBordures.violet,
                        borderWidth: 1
                    },{
                        type: 'bar',
                        label: 'Stock objectif',
                        data: stockObjectifAlert,
                        backgroundColor: couleurs.vert,
                        borderColor: couleursBordures.vert,
                        borderWidth: 1
                    }]
                },
                options: {
                	responsive: true,
                	tooltips: {
						mode: 'index',
						intersect: false
					},
					scales: {
						xAxes: [{
							stacked: true,
						}],
						yAxes: [{
							stacked: true
						}]
					}
                }
            });
            callback(true);
        }) 
    }

    // Récupère le CA HT par famille
    var libellesFamilles=[];
    var CaFamilles=[]
    function CAHT_mensuel(){
        $.ajax({
            method: "GET",
            url: "http://localhost:8080/ExoJEEeCommerce/services?role=direction_CAHT_mensuel"
        }).done(function(listeProduits){
            console.log(listeProduits)
            for (var i=0; i<listeProduits.length; i++){
                libellesFamilles[i]=listeProduits[i].libelleFamille;   
                CaFamilles[i]=listeProduits[i].CAHT;   
            } 
            var ctx = document.getElementById("CaMois");  
            var myChart = new Chart(ctx, {
                type: 'pie',                
                data: {
                    labels: libellesFamilles,
                    datasets: [{
                        data: stockProduitsAlert,
                        backgroundColor: [
                            couleurs.rouge,
                            couleurs.vert,
                            couleurs.bleu,
                            couleurs.violet,
                            couleurs.jaune,
                            couleurs.orange,
                            couleurs.gris
                        ],
                        borderColor: [
                            couleursBordures.rouge,
                            couleursBordures.vert,
                            couleursBordures.bleu,
                            couleursBordures.violet,
                            couleursBordures.jaune,
                            couleursBordures.orange,
                            couleursBordures.gris
                        ],
                        borderWidth: 1
                    }]
                }
                ,
                options: {
                	responsive: true
                }
            });
        }) 
    }
}) 