<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html dir="ltr" lang="ko">
<%@include file="../header.jsp"%>

<!-- <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
    function oneCheckbox(option){
        var obj = document.getElementsByName("checkbox1");
        for(var i=0; i<obj.length; i++){
            if(obj[i] != a){
                obj[i].checked = false;
            }
        }
    }
</script> -->

<body class="stretched">

   <!-- Document Wrapper
    ============================================= -->
   <div id="wrapper" class="clearfix">

      <!-- #header end -->

      <!-- Page Title
        ============================================= -->
      <section id="page-title" class="page-title-parallax"
         style="background-image: url('resources/images/survey/surveychart2.jpg'); padding: 120px 0;"
         data-stellar-background-ratio="0.3">

         <div class="container clearfix">
            <h1 style="color: #ffffff">�������� ���</h1>
            <span style="color: #ffffff">StarTrip Trip Guide</span>
            <ol class="breadcrumb">
               <li><a href="main" style="color: #ffffff">Home</a></li>
               <li class="active" style="color: #ffffff">��������</li>
            </ol>
         </div>

      </section>
      <!-- #page-title end -->

      <!-- Contact Form & Map Overlay Section
        ============================================= -->
      <section id="map-overlay">

         <div class="container clearfix bgcolor-grey"
            style="width: fit-content;">
            <br>
            <div class="fancy-title title-dotted-border">
               <h3>��ü��ǥ ��� ����</h3>
            </div>

            <div id="column_chart_div1"></div>
            <br>
            <div style="width: 1200px; height: 280px; display: flex;">
               <div id="piechart1" style="width: 400px; height: 280px; flex: 1;"></div>
               <div id="piechart2" style="width: 400px; height: 280px; flex: 1;"></div>
               <div id="piechart3" style="width: 400px; height: 280px; flex: 1;"></div>
            </div>

            <div style="width: 1200px; height: 280px; display: flex;">
               <div id="piechart4" style="width: 400px; height: 280px; flex: 1;"></div>
               <div id="piechart5" style="width: 400px; height: 280px; flex: 1;"></div>
               <div id="piechart6" style="width: 400px; height: 280px; flex: 1;"></div>
            </div>

            <div style="width: 1200px; height: 280px; display: flex;">
               <div id="piechart7" style="width: 400px; height: 280px; flex: 1;"></div>
               <div id="piechart8" style="width: 400px; height: 280px; flex: 1;"></div>
               <div id="piechart9" style="width: 400px; height: 280px; flex: 1;"></div>
            </div>


            <a href="goLocalDetail?locnum=${locnum}"
               class="button button-rounded button-reveal button-large button-3d topmargin-sm noleftmargin tright"
               style="color: #FFF; margin: 30px; float: right;"> <i
               class="icon-angle-right"></i><span>��õ �������� �̵��ϱ�</span></a>
         </div>
   </div>
   <!-- #wrapper end -->

   <script type="text/javascript" src="resources/js/functions.js"></script>
   <script src="https://www.gstatic.com/charts/loader.js"></script>
   <script>
//���� �ð�ȭ API�� �ε��ϴ� �޼ҵ�
google.charts.load('current', {packages: ['corechart']});
google.charts.setOnLoadCallback(columnChart1);
google.charts.setOnLoadCallback(pieChart);
// ���� �ð�ȭ API�� �ε��� �Ϸ�Ǹ�,
// ���ڷ� ���޵� �ݹ��Լ��� ���������� ȣ���Ͽ� ��Ʈ�� �׸��� �޼ҵ�
// ȭ���� ����ɶ� �Բ� ����ȴ�.
//google.charts.setOnLoadCallback(columnChart1);
// ���� ���� ������ ��Ʈ 1
function columnChart1() {
   var url ="getcolumnChartDetail"
      $.ajax({
         url : url,
         dataType : "json",
         success : function(d) {
            var result = [];
            var sub = new Set(d.sub);            
            result.push(['�׸�', '��ǥ��']);
            for (var i = 0; i < d.surveyTitle.length; i++) {               
                  result.push([d.surveyTitle[i], d.cnt[i]]);
               }
            console.log(result)               
            var data = google.visualization.arrayToDataTable(result);
            var options = {      
                  width: 1200,
                  height: 500,               
                  legend: { position: 'none' },
                    series: { 0: { color:'#EAAF22'}},   
                  title:'----------------------------------------------------  �α� ���� ����  ----------------------------------------------------',   
                  titleTextStyle: {
                     
                     fontSize: 20,
                     color:'#EAAF22'   ,   
                     fontName: 'Arial',
                     
                  },
                  animation: { //��Ʈ�� �ѷ����� ����� �ִϸ��̼� ȿ��
                          startup: true,
                          duration: 1000,
                          easing: 'linear' },      
            };
            var chart = new google.visualization.ColumnChart(document.getElementById('column_chart_div1'));
            chart.draw(data, options);
      
        },
        error:function(e){
        console.log(e);
     }
      });   
   }
// ��ư Ŭ�� �� ajax�� ����Ͽ� �����κ��� json �迭 ��ü�� �����Դٰ� ������
/*
var arr = [
['����', '��ǥ��',{ role: "style" }],
['���ֵ�', 21, "#b87333"],
['����', 11, "silver"],
['������', 66, "gold"],
['��û��', 53, "color: #e5e4e2"],
['���', 53, "color: #e5e4e2"],
['����', 53, "color: #e5e4e2"],
['��õ', 53, "color: #e5e4e2"],
['�뱸', 53, "color: #e5e4e2"],
['����', 53, "color: #e5e4e2"],
['����', 53, "color: #e5e4e2"],
['���', 53, "color: #e5e4e2"],
['�λ�', 53, "color: #e5e4e2"]
];
// �� �����͸� ���� ���������̺� ��ü�� ��ȯ�ϴ� �޼ҵ�
var dataTable = google.visualization.arrayToDataTable(arr);
// �ɼǰ�ü �غ�
var options = {
title: '���� ��ȣ�ϴ� ������������?',
width: 1200,
height: 500,
hAxis: {
title: '����',
titleTextStyle: {
}
}
};
// ��Ʈ�� �׸� ������ div ��ü�� ������
var objDiv = document.getElementById('column_chart_div1');
// ���ڷ� ������ div ��ü�� ������ �÷���Ʈ�� �׸��� �ִ� ��Ʈ��ü�� ��ȯ
var chart = new google.visualization.ColumnChart(objDiv);
// ��Ʈ��ü�� ���������̺�� �ɼ� ��ü�� ���ڷ� �����Ͽ� ��Ʈ �׸��� �޼ҵ�
chart.draw(dataTable, options);
*/
 
// drawColumnChart1()�� ��

function pieChart(){
   var url ="getPieChartDetail"
   $.ajax({
      url : url,
      dataType : "json",
      success : function(d) {
         var result = [];
         var k = 1
         var sub = new Set(d.sub);
         /* for(var i = 0 ;i<44; i++){
            for(var j in sub){
               console.log(d.sub[i] === sub[j]);
               if(d.sub[i] === sub[j]){         
                    result.push([d.surveyTitle[i], d.cnt[i]]);
               }else{
                  result.unshift([sub[j],"��ǥ��"]);   
                  console.log(result);
                  var data = google.visualization.arrayToDataTable(result);
                   var options = {
                      title: j,
                      pieHole: 0.3,
                   };
                   //�׸� �ݺ��ؼ� ���� ��.
                  var chart = new google.visualization.PieChart(document.getElementById('piechart'+k));
                      chart.draw(data, options);
                  k++;
                  result = [];
               }
            }console.log(k); */
            for(let item of sub){
               result.push([item,"��ǥ��"]);
               for(var i = 0 ;i<44; i++){
                  /* console.log(d.sub[i]);
                  console.log(item);
                  console.log(d.sub[i] === item); */
                  if(item.includes(d.sub[i])){         
                       result.push([d.surveyTitle[i], d.cnt[i]]);
                  }
               }
               var data = google.visualization.arrayToDataTable(result);
                var options = {
                   title: item,
                  titleTextStyle: {fontSize: 13},
                    pieHole: 0.3,
                };
                //�׸� �ݺ��ؼ� ���� ��.
               var chart = new google.visualization.PieChart(document.getElementById('piechart'+k));
                   chart.draw(data, options);
               k++;
               result = [];/* console.log(k); */
         }
     },
     error:function(e){
     console.log(e)
  }
   })
}
</script>
</body>
</html>
<%@include file="../footer.jsp"%>