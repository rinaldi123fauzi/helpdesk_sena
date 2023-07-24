//= require js/app.min.js

//= require js/scripts.js
//= require js/custom.js

//= require bundles/datatables/datatables.min.js
//= require bundles/datatables/DataTables-1.10.16/js/dataTables.bootstrap4.min.js
//= require bundles/datatables/export-tables/dataTables.buttons.min.js
//= require bundles/datatables/export-tables/buttons.flash.min.js
//= require bundles/datatables/export-tables/jszip.min.js
//= require bundles/datatables/export-tables/pdfmake.min.js
//= require bundles/datatables/export-tables/vfs_fonts.js
//= require bundles/datatables/export-tables/buttons.print.min.js
//= require bundles/select2/dist/js/select2.full.min.js
//= require js/page/datatables.js
//= require bundles/prism/prism.js

$(document).ready(function(){
    $(".modal-backdrop").remove();
    // $(window).keydown(function(event){
    //     if(event.keyCode == 13) {
    //       event.preventDefault();
    //       return false;
    //     }
    // });
});
$("textarea").each(function () {
    this.setAttribute("style", "height:" + (this.scrollHeight) + "px;overflow-y:hidden; width: 100%; min-height: 100px;");
}).on("keyup click", function () {
    this.style.height = 0;
    this.style.height = (this.scrollHeight) + "px";
});
$(document).on('click','#close-modal',function(){
    $(".modal").hide();
    $(".modal-backdrop").remove();
    $('.modal').modal( 'hide' ).data( 'bs.modal', null );
});

$("#dataTable_role").dataTable();
$("#dataTable_user").dataTable(
    {bFilter: false, "bLengthChange": false, }
);
$("#dataTable_kategori").dataTable();
$("#dataTable_sub_kategori").dataTable();
$("#dataTable_area").dataTable();
$("#dataTable_material").dataTable();
$("#dataTable_unit").dataTable();
$("#dataTable_ticket").dataTable(
    {bFilter: false, "bLengthChange": false, }
);
