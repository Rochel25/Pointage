<!DOCTYPE html>
<html lang="en">
<head>
<?php include_once "header.php" ?>
<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/vendor/datatables/dataTables.bootstrap4.css');?>">
</head>
<body>

<section class="col-lg-12"  id="tab" >
    <div class="container-lg"style="background-color:white;margin-top:-70px;">
    <hr style="background-color:#106eea; height:2px;">
    <h3 style="text-align:center;margin-top:-5px; margin-bottom:-10px;">HEURE DE TRAVAIL DU PERSONNEL</h3>
    <hr style="background-color:#106eea; height:2px; ">
    <div style="display:flex">                          
               
    <div  class="col-auto mr-auto alert-success" style="height:25px; border-radius:30px; margin-left:12px;">
    
                <?php  
                  
                   $mois=$_POST['DATE'];
                   $an=$_POST['AN'];
                if ($mois==1)
                   {
                       echo "<span> Nombre d'heure durant le mois de Janvier $an </span>";  
                   } 
                   if ($mois==2)
                {
                    echo "<span> Nombre d'heure durant le mois de Février $an </span>";  
                } 
                if ($mois==3)
                {
                    echo "<span> Nombre d'heure durant le mois de Mars $an </span>";  
                } 
                if ($mois==4)
                {
                    echo "<span> Nombre d'heure durant le mois de Avril $an </span>";  
                } 
                if ($mois==5)
                {
                    echo "<span> Nombre d'heure durant le mois de Mai $an </span>";  
                } 
                if ($mois==6)
                {
                    echo "<span> Nombre d'heure durant le mois de Juin $an </span>";  
                } 
                if ($mois==7)
                {
                    echo "<span> Nombre d'heure durant le mois de Juillet $an </span>";  
                } 
                if ($mois==8)
                {
                    echo "<span> Nombre d'heure durant le mois d'Août $an </span>";  
                } 
                if ($mois==9)
                {
                    echo "<span> Nombre d'heure durant le mois de Septembre $an </span>";  
                } 
                if ($mois==10)
                {
                    echo "<span> Nombre d'heure durant le mois d'Octobre $an </span>";  
                } 
                if ($mois==11)
                {
                    echo "<span> Nombre d'heure durant le mois de Novembre $an </span>";  
                } 
                if ($mois==12)
                {
                    echo "<span> Nombre d'heure durant le mois de Décembre $an </span>";  
                } 
    ?> 
 
 </div>
  
            
         
         <div style="float:right; margin-right:20px; margin-bottom:15px; display:flex;">
         <?php
         $name=$_POST['NOM'];
         $date1= $_POST['DATE'];
         $an= $_POST['AN']; ?>
          <form  action="/heure/detail" method="POST">
         <input type="hidden" value="<?=$date1;?>" class="MOIS" name="DATE" >
         <input type="hidden" value="<?=$an;?>"  class="ANN" name="AN" > 
         <input  type="hidden" value="<?=$name;?>" class="NO" name="NOM">
         <button  type="submit" id="pdf"  class="btn-xm detail"><i class="fa  fa-sort-alpha-asc btn-xm"></i> Détail</button></form>
         &nbsp; &nbsp;
         <form action="/heure/excel" method="POST">
         <input type="hidden" value="<?=$date1;?>"   name="DATE" >
         <input type="hidden" value="<?=$an;?>" name="AN" > 
         <input  type="hidden" value="<?=$name;?>"  name="NOM">
         <button type="submit" id="pdf"  class="btn-xm"><i class="fa fa-file-excel-o btn-xm"></i> Excel</button></form>
         </div>
</div>
   
    <div class="table-responsive col-auto mr-auto" >
        <table class="table table-sm table-bordered table-striped" id="dataTable">
            <thead>
                <tr>       
                     <th>Nom et prénoms</th>
                     <th>Fonction</th>
                     <th>Date du pointage</th>                               
                    <th>Nombres d'heure</th>
                   <th>Observation</th>
                </tr>
            </thead>
            <tbody >
            <?php foreach($heure as $row):?>
            <tr>
            <td><?= $row->nom;?> <?= $row->prenom;?></td>
            <td><?= $row->fonction;?></td>
            <td><?= $row->datepointage;?></td>
            <td><?= $row->nbheure/10000;?></td>
            <td><?= $row->OBSERVATION1;?></td>
           <?php endforeach;?>
            </tbody>
        </table>
    </div>

</section>

<?php include_once "footer.php" ?>
<script src="<?php echo base_url('assets/vendor/datatables/datatables-demo.js');?>"></script>
</body>
</html>