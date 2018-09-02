$(document).ready(function(){
    console.log('dans le jquery')
    $('#monBouton').click(function(e){
        console.log('dans ajax')
        $.ajax({
            type: 'GET',
            url: 'services' 
        })
    })
    
    function communcication(idProduit){
    	console.log(idProduit)
    }
}) 