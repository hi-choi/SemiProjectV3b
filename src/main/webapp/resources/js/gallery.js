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