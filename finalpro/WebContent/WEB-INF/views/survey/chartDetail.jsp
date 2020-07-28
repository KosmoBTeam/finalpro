<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    <!DOCTYPE html>
<html dir="ltr" lang="ko">
<%@include file="../header.jsp" %>

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

      </section><!-- #page-title end -->

        <!-- Contact Form & Map Overlay Section
        ============================================= -->
        <section id="map-overlay">

            <div class="container clearfix bgcolor-grey" style="width: fit-content;">
               <br>
               <div class="fancy-title title-dotted-border">
                  <h3>��ü��ǥ ��� ����</h3>
               </div>
            
                 <div id="column_chart_div1"></div>
                 <br>
               <div style="width: 1200px; height: 280px; display: flex;"> 
               <div id = "piechart1" style = "width : 400px; height : 280px; flex: 1;"></div> 
               <div id = "piechart2" style = "width : 400px; height : 280px; flex: 1;"></div> 
               <div id = "piechart3" style = "width : 400px; height : 280px; flex: 1;"></div> 
            </div>
         
            <div style="width: 1200px; height: 280px; display: flex;"> 
               <div id = "piechart4" style = "width : 400px; height : 280px; flex: 1;"></div> 
               <div id = "piechart5" style = "width : 400px; height : 280px; flex: 1;"></div> 
               <div id = "piechart6" style = "width : 400px; height : 280px; flex: 1;"></div> 
            </div>
         
            <div style="width: 1200px; height: 280px; display: flex;"> 
               <div id = "piechart7" style = "width : 400px; height : 280px; flex: 1;"></div> 
               <div id = "piechart8" style = "width : 400px; height : 280px; flex: 1;"></div> 
               <div id = "piechart9" style = "width : 400px; height : 280px; flex: 1;"></div> 
            </div>
          

         <a href="goLocalDetail?locnum=${locnum}" 
                            class="button button-rounded button-reveal button-large button-3d topmargin-sm noleftmargin tright" 
                            style="color:#FFF; margin: 30px; float: right;">
                            <i class="icon-angle-right"></i><span>��õ �������� �̵��ϱ�</span></a>  
          </div>  
</div><!-- #wrapper end -->

    <script type="text/javascript" src="resources/js/functions.js"></script>
<script src="https://www.gstatic.com/charts/loader.js"></script>
<script>
//���� �ð�ȭ API�� �ε��ϴ� �޼ҵ�
google.charts.load('current', {packages: ['corechart']});
google.charts.setOnLoadCallback(columnChart1);
google.charts.setOnLoadCallback(pieChart1);
google.charts.setOnLoadCallback(pieChart2);
google.charts.setOnLoadCallback(pieChart3);
google.charts.setOnLoadCallback(pieChart4);
google.charts.setOnLoadCallback(pieChart5);
google.charts.setOnLoadCallback(pieChart6);
google.charts.setOnLoadCallback(pieChart7);
google.charts.setOnLoadCallback(pieChart8);
google.charts.setOnLoadCallback(pieChart9);
// ���� �ð�ȭ API�� �ε��� �Ϸ�Ǹ�,
// ���ڷ� ���޵� �ݹ��Լ��� ���������� ȣ���Ͽ� ��Ʈ�� �׸��� �޼ҵ�
// ȭ���� ����ɶ� �Բ� ����ȴ�.
//google.charts.setOnLoadCallback(columnChart1);
// ���� ���� ������ ��Ʈ 1
function columnChart1() {
// ��ư Ŭ�� �� ajax�� ����Ͽ� �����κ��� json �迭 ��ü�� �����Դٰ� ������
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
} // drawColumnChart1()�� ��

function pieChart1(){

    var data = google.visualization.arrayToDataTable([
      ['������','��ǥ��', {role: "style"}],
      ['ȥ�� ����',30, "#b87333"],
      ['Ŀ�� ����',30, "silver"],
      ['ģ���� ����',25, "gold"],
      ['���� ����',22, "color: #e5e4e2"],
      ['��ü ����',27, "red"]
    ]);

    var options = {
       title: '������ �Բ� ������ ������ �����Ű���?',
       pieHole: 0.3,
    };
    var chart = new google.visualization.PieChart(document.getElementById('piechart1'));
    chart.draw(data, options);
  }
function pieChart2(){

    var data = google.visualization.arrayToDataTable([
      ['����� �߿䵵','��ǥ��', {role: "style"}],
      ['���',30, "#b87333"],
      ['����',20, "silver"],
      ['����',25, "gold"],
      ['������ �ŷµ�',20, "silver"],
      ['���ఴ ������',25, "gold"],
      ['��Ÿ',25, "gold"]
    ]);

    var options = {
       title: '����� ���� �߿��ϰ� �����ϴ� ��Ҵ� �����ΰ���?',
       pieHole: 0.3,
    };
    var chart = new google.visualization.PieChart(document.getElementById('piechart2'));
    chart.draw(data, options);
  }
function pieChart3(){
    var data = google.visualization.arrayToDataTable([
      ['���� ����','��ǥ��', {role: "style"}],
      ['ȣĲ��',30, "#b87333"],
      ['�ĵ���',20, "silver"],
      ['��Ƽ��Ƽ',25, "gold"],
      ['����/���',20, "silver"],
      ['��Ÿ',25, "gold"]
    ]);
    var options = {
       title: '��ȣ�ϴ� ���� ������ �����ΰ���?',
         pieHole: 0.3,        
    };
    var chart = new google.visualization.PieChart(document.getElementById('piechart3'));
    chart.draw(data, options);
  }
function pieChart4(){
    var data = google.visualization.arrayToDataTable([
      ['���� ����','��ǥ��', {role: "style"}],
      ['����',30, "#b87333"],
      ['�ϻ�Ż��',20, "silver"],
      ['���ο� ����',25, "gold"],
      ['�޽�',20, "silver"],
      ['�ĵ���',25, "gold"]
    ]);
    var options = {
       title: '������ �ֵ� ������ �����ΰ���?',
         pieHole: 0.3,
    };
    var chart = new google.visualization.PieChart(document.getElementById('piechart4'));
    chart.draw(data, options);
  }
function pieChart5(){

    var data = google.visualization.arrayToDataTable([
      ['���� ���','��ǥ��', {role: "style"}],
      ['��',30, "#b87333"],
      ['�ٴ�',20, "silver"],
      ['���',25, "gold"],
      ['����',20, "silver"],
      ['��Ÿ',25, "gold"]
    ]);
    var options = {
        title: '���� ������ ������ �����Ű���?',
         pieHole: 0.3,
    };
    var chart = new google.visualization.PieChart(document.getElementById('piechart5'));
    chart.draw(data, options);
  }
function pieChart6(){
    var data = google.visualization.arrayToDataTable([
      ['���� ����','��ǥ��', {role: "style"}],
      ['����(1��)',30, "#b87333"],
      ['1��2��',20, "silver"],
      ['2��3��',25, "gold"],
      ['3�� �̻�',25, "gold"]
    ]);
    var options = {
      title: '��ȣ�ϴ� ���� �Ⱓ�� ��ĥ�ΰ���?',
         pieHole: 0.3,
    };
    var chart = new google.visualization.PieChart(document.getElementById('piechart6'));
    chart.draw(data, options);
  }
function pieChart7(){
    var data = google.visualization.arrayToDataTable([
      ['���� �ð�','��ǥ��', {role: "style"}],
      ['1�ð� �̳�',30, "#b87333"],
      ['2�ð� �̳�',20, "silver"],
      ['3�ð� �̳�',25, "gold"],
      ['��� ����',25, "gold"]
    ]);
    var options = {
      title: '������ ���� �� ���� ������ �ҿ�ð��� ���ΰ���?',
     pieHole: 0.3,            
    };
    var chart = new google.visualization.PieChart(document.getElementById('piechart7'));
    chart.draw(data, options);
  }
function pieChart8(){

    var data = google.visualization.arrayToDataTable([
      ['����','��ǥ��', {role: "style"}],
      ['��',30, "#b87333"],
      ['����',20, "silver"],
      ['����',25, "gold"],
      ['�ܿ�',20, "silver"],
      ['��� ����',25, "gold"]
    ]);

    var options = {
      title: '���� ������ ������ ���� ������ ���� �ΰ���?',
     pieHole: 0.3,            

    };
    var chart = new google.visualization.PieChart(document.getElementById('piechart8'));
    chart.draw(data, options);
  }
function pieChart9(){
    var data = google.visualization.arrayToDataTable([
      ['�ڷγ� ���� ��','��ǥ��', {role: "style"}],
      ['����',30, "#b87333"],
      ['���� ����',20, "silver"],
      ['��ȭ/���� ����',25, "gold"],
      ['�',20, "silver"],
      ['��Ÿ',25, "gold"]
    ]);
    var options = {
      title: '�ڷγ� 19�� ���� �Ǹ� ���� ���� ������ �ϰ� ��������?',
     pieHole: 0.3,            
    };
    var chart = new google.visualization.PieChart(document.getElementById('piechart9'));
    chart.draw(data, options);
  }
  document.onload(function(){
	  
  })
</script>   
</body>
</html>
<%@include file="../footer.jsp"%>