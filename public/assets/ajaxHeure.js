$(document).ready(function(){

        
$('.detail').on('click',function(){
  var mois=$('.MOIS').val();
  var an=$('.ANN').val();
  var nom=$('.NO').val();

//   var html1='';
            
//   html1 += '<tr>'+
//      '<th>'+"Nom et prénoms d'employé"+'</th>'+
//      '</tr>';
//      $('#tete').html(html1);
      
        $.ajax({
           
       url:'heure/detail/'+mois+an+nom,
       type:'POST',
      dataType : 'JSON',
      success:function(data){
       
             var html = '';
             var i;
             
           for(i=0; i<data.length; i++){
                  
                    html += '<tr>'+
                           
                            '<td>'+data[i].NOMEMP+'</td>'+
                         '<td>'+data[i].HEUREENTMA+'</td>'+
    //                        '<td >'+
    //                            '<a type="button" id="bleu" href="#" class="btn-xm btn-edit fa fa-edit" data-id="'+data[i].NUMFONCT+'"  data-nom="'+data[i].NOMFONCT+'"  data-cat="'+data[i].CATFONCT+'" ></a>'+' '+
    //                            '<a type="button" id="rouge" href="#" class=" btn-xm btn-delete fa fa-trash" data-id="'+data[i].NUMFONCT+'"></a>'+
    //                        '</td>'+
                           '</tr>';
               
            }
      
               $('#body').html(html);
    
              
                       
           },
      
      
            error: function(){
               alert('erreur');}
          
       
    });
    
   })

});