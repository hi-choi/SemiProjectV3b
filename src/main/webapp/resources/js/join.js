// agree
// agree - 모두 동의할 경우
$('#okagree').on('click',function() {
    if(!$('#agree1').is(':checked'))
        alert('이용약관에 동의하세요!');
    else if(!$('#agree2').is(':checked'))
        alert('개인정보 수집에 동의하세요!');
    else
        location.href = '/join/checkme'
});

// agree - 동의하지 않았을 경우
$('#noagree').on('click',function() {
    location.href='/';
});

// checkme
$('#chk2btn').on('click',function(){
    if ($('#name2').val()=='') alert('이름을 입력하세요!');
    else if ($('#jumin1').val()=='' || $('#jumin2').val()=='') alert('주민번호를 입력하세요!');
    else if (!$('#chkjumin').is(':checked'))
        alert('주민번호이용 동의에 체크하세요!');
    else{
        const frm = $('#checkfrm2');
        frm.attr('action','/join/joinme');
         frm.attr('method', 'post');
        frm.submit();
    }
});
$('#cancel2btn').on('click',function(){
    location.href="/";
});

// userid check
$('#userid').on('blur',function(){ checkuserid();});
$('#userid').on('focus',function(){
    $('#uidmsg').text('8~16 자의 영문 소문자, 숫자와 특수기호(-)만 사용할 수 있습니다.');
    $('#uidmsg').attr('style','color:black');

});
// ajax check usrid
function checkuserid() {
    let uid = $('#userid').val();
    if(uid==''){ // 아이디를 입력하지 않고 탭을 누른 경우
        $('#uidmsg').text('8~16 자의 영문 소문자, 숫자와 특수기호(-)만 사용할 수 있습니다.');
        $('#uidmsg').attr('style','color:black');
        return;
    }
    $.ajax({
        url: '/join/checkuid',
        type: 'GET',
        data: { 'uid':uid }
    })
        .done(function(data){
            let msg ='사용불가능한 아이디입니다!!';
            $('#uidmsg').attr('style','color:red');

            if (data.trim() == '0'){
                msg = '사용가능한 아이디입니다!!';
                $('#uidmsg').attr('style','color:blue');
            }
            $('#uidmsg').text(msg);
        })
        .fail(function(xhr, status, error){
            alert(xhr.status + '/' + error);
        });
}

// check equal passwd
$('#pwdck').on('blur',function(){
    if($('#passwd').val() != $('#pwdck').val()){
        $('#pwdmsg').text('비밀번호가 일치하지 않습니다.');
        $('#pwdmsg').attr('style','color:red');
    }
    else{
        $('#pwdmsg').text('비밀번호가 일치합니다.');
        $('#pwdmsg').attr('style','color:blue');
    }
});
$('#pwdck').on('focus',function(){
    $('#pwdmsg').text('이전 항목에서 입력했던 비밀번호를 한번 더 입력하세요.');
    $('#pwdmsg').attr('style','color:black');
});

// joinme
$('#joinbtn').on('click',function(){
    if($('#userid').val() == '') alert('아이디를 입력하세요');
    else if($('#passwd').val() == '') alert('비밀번호를 입력하세요');
    else if($('#pwdck').val() == '') alert('비밀번호를 입력하세요');
    else if($('#passwd').val()!= $('#pwdck').val()) alert('비밀번호가 일치하지 않습니다.');
    //else if($('#zip1').val() == '' || $('#zip2').val() == '') alert('우편번호를 조회하세요');
    else if($('#addr1').val()==''||$('#addr2').val()=='') alert('주소를 입력하세요');
    else if($('#email1').val()=='' || $('#email2').val()=='') alert('이메일을 입력하세요');
    else if($('#tel1').val()=='' || $('#tel2').val()=='' || $('#tel3').val()=='') alert('전화번호를 입력하세요');
    else if(grecaptcha.getResponse() =='')
        alert('자동가입 방지 확인 필요!!');
    else {
        $('#jumin').val($('#jumin1').val()+'-'+$('#jumin2').val());
        $('#zipcode').val($('#zip1').val()+'-'+$('#zip2').val());
        $('#email').val($('#email1').val()+'@'+$('#email2').val());
        $('#phone').val($('#tel1').val()+'-'+$('#tel2').val()+'-'+$('#tel3').val());
        const frm = $('#joinfrm');
        frm.attr('action','/join/joinok');
        frm.attr('method', 'post');
        frm.submit();

    }

});

$('#cancelbtn').on('click',function(){location.href='/';});

// zipcode dong prevent enter key
$('input[type="text"]').keydown(function(){
    if (event.keyCode === 13){
        event.preventDefault();
    }
});

// show zipcode
$('#findzipbtn').on('click',function(){
    $.ajax({
        url: '/join/zipcode',
        type: 'GET',
        data: { dong: $('#dong').val()}
    })
        .done(function(data){
            //서버에서 넘어온 데이터는 JSON형식임
            //alert(data); // object로 출력
            let opts = "";
            $.each(data, function(){    // 행단위 반복처리
                let zip = '';
                $.each(this, function(k,v){ // 열단위 반복처리
                    if (v != null) zip += v + ' ';
                });
                opts += '<option>' + zip + '</option>';
            }); // 행단위 반복처리
            $('#addrlist').find('option').remove(); // 기존option태그 삭제
            $('#addrlist').append(opts); // 새로만든 option태그를 추가함
        })
        .fail(function(xhr, status, error) {
            alert(xhr.status + '/'+error);
        });
});

// send zipcode
$('#sendzip').on('click',function(){
    //선택한 데이터 가져오기
    let addr = $('#addrlist option:selected').val();
    if(addr==undefined){
        alert('주소를 선택하세요!!');
        return;
    }
    let addrs = addr.split(' '); // 선택한 주소를 공백으로 나눔

    // 잘라낸 첫번째 뭉치를 -로 다시 나눔
    $('#zip1').val(addrs[0].split('-')[0]);
    $('#zip2').val(addrs[0].split('-')[1]);
    
    // 잘라낸 나머지 뭉치들을 합쳐서 addr1로 보냄
    $('#addr1').val(addrs[1]+' '+addrs[2] + ' '+addrs[3]);

    // 검색창 닫음
    $('#zipmodal').modal('hide');

});

// send email2
// option:selected => select 요소들 중 선택한 요소의 값 알아냄
$('#email3').on('change',function(){
    let val = $('#email3 option:selected').text();
    if(val=='직접 입력하기') {
        $('#email2').attr('readonly', false); //readonly 속성 해제
        $('#email2').val('');
    }
    else {
        $('#email2').attr('readonly',true);//readonly 속성 잠금
        $('#email2').val(val);
    }
});