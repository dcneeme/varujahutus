function PortCheck(I){
  d =parseInt(I.value, 10);
  if ( !( d<65536 && d>=0) ) {
    alert('Port value is out of range [0 - 65535]');
    I.value = I.defaultValue;
  }
}

function IntCheck(I){
  d =parseInt(I.value, 10);
  if ( !( d<65536 && d>=0) ) {
    alert('Value is out of range [0 - 65535]');
    I.value = I.defaultValue;
  }
}

function ByteCheck(I){
  d =parseInt(I.value, 10);
  if ( !( d<256 && d>=0) ) {
    alert('Value is out of range [0 - 255]');
    I.value = I.defaultValue;
  }
}

function IPCheck(I){
  d =parseInt(I.value, 10);
  if ( !(d<256 && d>=0) ) {
    alert('IP value is out of range [0 - 255]');
    I.value = I.defaultValue;
  }
}

function IP0to254(I){
  d =parseInt(I.value, 10);
  if ( !(d<255 && d>=0) ) {
    alert('IP value is out of range [0 - 254]');
    I.value = I.defaultValue;
  }
}

function IP1to254(I){
  d =parseInt(I.value, 10);
  if ( !(d<255 && d>0) ) {
    alert('IP value is out of range [1 - 254]');
    I.value = I.defaultValue;
  }
}

function CheckMetric(I){
  d =parseInt(I.value, 10);
  if ( !(d<16 && d>=0) ) {
    alert('Hop count value is out of range [0 - 15]');
    I.value = I.defaultValue;
  }
}

function netMaskCheck(I){
  d =parseInt(I.value, 10);
  if( !(d==0 || d==128 || d==192 || d==224 || d==240 || d==248 || d==252 || d==254 || d==255 )) {
    alert('Incorrect NetMask value!!!');
    I.value = I.defaultValue;
  }
}

function netMaskCheck3(I){
  d =parseInt(I.value, 10);
  if( !(d==0 || d==128 || d==192 || d==224 || d==240 || d==248 || d==252 || d==254 )) {
    alert('Incorrect NetMask value!!!');
    I.value = I.defaultValue;
  }
}

function TempCheck(I){
  d =parseInt(I.value, 10);
  if ( !(d<99 && d>-99) ) {
    alert('Temperature value is out of range [-99...99 deg C]');
    I.value = "0";
  }
}

function LightCheck(I){
  d =parseInt(I.value, 10);
  if ( !(d<91 && d>9) ) {
    alert('Value is out of range [10...90]');
    I.value = "0";
  }
}

function mVCheck(I){
  d =parseInt(I.value, 10);
  if ( !(d<30000 && d>9000) ) {
    alert('The entered voltage value is out of range [9000...30000 mV]');
    I.value = "12000";
  }
}

function aiCheck(I){
  d =parseInt(I.value, 10);
  if ( !(d<1024 && d>0) ) {
    alert('The entered value is out of range [1...1023]');
    I.value = "512";
  }
}

function mACheck(I){
  d =parseInt(I.value, 10);
  if ( !(d<30000 && d>1000) ) {
    alert('The entered value is out of range [1000...30000 mA]');
    I.value = "5000";
  }
}

function hourCheck(I){
  d =parseInt(I.value, 10);
  if ( !(d<0 && d>23) ) {
    alert('The entered value is out of range [0..23]');
    I.value = "10";
  }
}

function minCheck(I){
  d =parseInt(I.value, 10);
  if ( !(d<0 && d>59) ) {
    alert('The entered value is out of range [0..59]');
    I.value = "0";
  }
}

function VcalCheck(I){
  d =parseInt(I.value, 10);
  if ( !(d<9999 && d>900) ) {
    alert('Calibration Constant is out of range [900...9999]');
    I.value = "1000";
  }
}

function Go(x) {
   parent.frames[3].location.href = x;
   document.forms[0].reset();
   document.forms[0].elements[0].blur();
}


