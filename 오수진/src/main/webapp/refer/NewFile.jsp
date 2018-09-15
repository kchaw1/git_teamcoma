<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style >
* {
    margin: 0;
    padding: 0;
}

h1, h3{
  text-transform: uppercase;
  font-weight: normal;
}

.tabs{
    width: 600px;
    display: block;
    margin: 40px auto;
    position: relative;
}

.tabs .tab{
    float: left;
    display: block;
}

.tabs .tab>input[type="radio"] {
    position: absolute;
    top: -9999px;
    left: -9999px;
}

.tabs .tab>label {
    display: block;
    padding: 6px 21px;
    font-size: 12px;
    text-transform: uppercase;
    cursor: pointer;
    position: relative;
    color: #FFF;
    background: #4A83FD;
}

.tabs .content {
    z-index: 0;/* or display: none; */
    overflow: hidden;
    width: 600px;
    padding: 25px;
    position: absolute;
    top: 27px;
    left: 0;
    background: #303030;
    color: #DFDFDF;
    
    opacity:0;
    transition: opacity 400ms ease-out;
}

.tabs>.tab>[id^="tab"]:checked + label {
    top: 0;
    background: #303030;
    color: #F5F5F5;
}

.tabs>.tab>[id^="tab"]:checked ~ [id^="tab-content"] {
    z-index: 1;/* or display: block; */
   
    opacity: 1;
    transition: opacity 400ms ease-out;
}

</style>
</head>
<body>
  <ul class="tabs">
    
    <li class="tab">
        <input type="radio" name="tabs" checked="checked" id="tab1" />
        <label for="tab1">One</label>
        <div id="tab-content1" class="content">
          <h1>Tab content 1</h1>
          <hr/>
          <h3>Aliquam tristique orci non facilisis lobortis</h3>
          <br/>
          <img src="https://blog.codepen.io/wp-content/uploads/2012/06/Button-Fill-Black-Large.png" width="100" style="float: left; margin-right: 10px;"/>
          <p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque commodo tortor ante, sed consequat nulla ultrices sit amet. Integer ornare aliquet metus, vitae volutpat dui bibendum eu. Integer eget eleifend ipsum. Aliquam tristique orci non facilisis lobortis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras sagittis vehicula sollicitudin.</p> 
        </div>
    </li>
    
    <li class="tab">
      <input type="radio" name="tabs" id="tab2" />
      <label for="tab2">Two</label>   
      <div id="tab-content2" class="content">
          <h1>Tab content 2</h1>
          <hr/>
          <h3>Ut bibendum augue vel magna rhoncus</h3>
          <br/>
       </div>
    </li>

     <li class="tab">
      <input type="radio" name="tabs" id="tab3" />
      <label for="tab3">Three</label>   
      <div id="tab-content3" class="content">
          <h1>Tab content 3</h1>
          <hr/>
          <h3>Praesent ac accumsan urna. Mauris lorem purus</h3>
          <br/>
          <p>Suspendisse vulputate nunc ac pretium pulvinar. Morbi pretium quis erat non vehicula. Phasellus porta dolor velit, vitae consectetur nisl consequat at. Praesent ac accumsan urna. Mauris lorem purus, pharetra ac ultrices sit amet, pulvinar sed sapien. Phasellus ornare laoreet dui, et eleifend risus tristique non. Donec lectus dolor, iaculis non tellus vitae, venenatis sagittis purus. Sed at rhoncus neque. Suspendisse gravida est eu consectetur tincidunt. Aliquam fermentum gravida fringilla</p> 
      </div>
    </li>

    <li class="tab">
      <input type="radio" name="tabs" id="tab4" />
      <label for="tab4">Four</label>   
      <div id="tab-content4" class="content">
          <h1>Tab content 4</h1>
          <hr/>
          <h3>Class aptent taciti sociosqu ad litora torquen</h3>
          <br/>
          <p>Fusce in malesuada ligula. Donec eleifend dui eu mi condimentum interdum. Cras justo tortor, imperdiet at ante vel, adipiscing venenatis nisl. Donec bibendum porttitor ipsum. Mauris turpis justo, tristique eget ipsum vel, volutpat lobortis velit. Aliquam sit amet ultrices eros. Vivamus ut diam sed leo pretium bibendum et sit amet tortor. Proin facilisis urna lobortis dictum semper. Nulla a imperdiet eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec et vehicula elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mu</p>       
      </div>
    </li>
    
  </ul>
</body>
</html>