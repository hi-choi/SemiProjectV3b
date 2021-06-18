// show img
function showimg(gno){
    location.href='/gallery/view?gno='+gno;
}

// 새글쓰기 new gallery
$('#newgalbtn').on('click',function(){
    location.href = '/gallery/write';
});

// write gallery
$('#newgal').on('click',function(){
    if($('#title').val() == '') alert('제목을 작성하세요!');
    else if($('#contents').val() == '') alert('본문을 작성하세요!');
    else if(grecaptcha.getResponse() =='') alert('자동가입방지를 작성하세요!');
    else {
        const frm = $('#galfrm')
        frm.attr('method','post');
        frm.attr('action','/gallery/write');
        frm.attr('enctype','multipart/form-data');
        frm.submit();
    }
});

// show attach filename
$('#file1').on('change',function(){
   // 현재 이벤트를 발생시킨 것의 값을 가져옴
    var fname = $(this).val();
    fname = fname.substring(fname.lastIndexOf("\\")+1);
    $(this).next('.custom-file-label').html(fname);
});

$('#file2').on('change',function(){
    // 현재 이벤트를 발생시킨 것의 값을 가져옴
    var fname = $(this).val();
    fname = fname.substring(fname.lastIndexOf("\\")+1);
    $(this).next('.custom-file-label').html(fname);
});

$('#file3').on('change',function(){
    // 현재 이벤트를 발생시킨 것의 값을 가져옴
    var fname = $(this).val();
    fname = fname.substring(fname.lastIndexOf("\\")+1);
    $(this).next('.custom-file-label').html(fname);
});

// modify gallery
$('#modgbtn').on('click',function(){
    location.href='/gallery/update?gno='+$('#gno').val();
});

// remove gallery
$('#rmvgbtn').on('click',function(){
   alert('기능 준비중입니다...');
});

// gallery disable/enable upload file
$('#die1').on('change',function(){
    if($('#die1').is(':checked')){// checkbox가 체크되면
        $('#file1').attr('disabled',false); // disabled 해제
        $('#todie').val("1"+$('#todie').val()); // 첨부파일 수정목록에 1 추가
    } else if (!$('#die1').is(':checked')){
        $('#file1').attr('disabled',true);
        $('#todie').val($('#todie').val().replace(/1/g,'')); // 첨부파일 수정목록에 1 제거
    }
});
// gallery disable/enable upload file
$('#die2').on('change',function(){
    if($('#die2').is(':checked')){//checkbox가 체크되면
        $('#file2').attr('disabled',false); // disabled 해제
        $('#todie').val("2"+$('#todie').val()); // 첨부파일 수정목록에 2 추가
    } else if (!$('#die2').is(':checked')){
        $('#file2').attr('disabled',true);
        $('#todie').val($('#todie').val().replace(/2/g,'')); // 첨부파일 수정목록에 2 제거
    }
});
// gallery disable/enable upload file
$('#die3').on('change',function(){
    if($('#die3').is(':checked')){// checkbox가 체크되면
        $('#file3').attr('disabled',false); // disabled 해제
        $('#todie').val("3"+$('#todie').val()); // 첨부파일 수정목록에 3 추가
    } else if (!$('#die3').is(':checked')){
        $('#file3').attr('disabled',true);
        $('#todie').val($('#todie').val().replace(/3/g,'')); // 첨부파일 수정목록에 3 제거
    }
});

// update gallery
$('#modgal').on('click',function() {
    if (grecaptcha.getResponse()=='') alert('자동 가입 방지를 확인하세요');
    else {
        const frm = $('#modgalfrm');
        frm.attr('method','post');
        frm.attr('enctype','multipart/form-data');
        frm.attr('action','/gallery/update');
        frm.submit();

    }

});