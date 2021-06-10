
// new board
$('#newbdbtn').on('click',function(){
    location.href = '/board/write';
});

// goto list
$('#listbdbtn').on('click',function(){
    location.href = '/board/list';
});

// save board
$('#savebdbtn').on('click',function(){
    if($('#title').val()=='') alert('제목을 입력하세요!');
    else if($('#contents').val()=='') alert('본문내용을 입력하세요!');
    else if(grecaptcha.getResponse() =='') alert('자동가입방지를 입력하세요!');
    else{
        const frm = $('#boardfrm');
        frm.attr('action','/board/write');
        frm.attr('method', 'post');
        frm.submit();
    }
});

// search board
$('#findbtn').on('click',function(){
    if($('#findkey').val()=='') alert('검색할 내용을 작성하세요!');
    else {
        let qry = '?findtype=' + $('#findtype').val();
        qry += "&findkey=" + $('#findkey').val()+"&cp=1";
        let url = '/board/find' + qry;
        location.href = url;
    }
});

