!(function () {

    'use strict';

    function cropImage(selection) {
        var canvas = document.createElement('canvas');
        canvas.width = 128;
        canvas.height = 128;
        var context = canvas.getContext('2d');
        context.drawImage(
                this.ui.stage.imgsrc,
                selection.x,
                selection.y,
                selection.w,
                selection.h,
                0,
                0,
                canvas.width,
                canvas.height
            );
        $('#image_output').attr('src', canvas.toDataURL());
    }

    function drawImage(e) {
        $('#image_input').html(this);
        $('#image_input img').Jcrop({
            boxWidth: 400,
            bgColor: 'black',
            bgOpacity: .6,
            aspectRatio: 1,
            onChange: cropImage
        });
    }

    function loadImage(e) {
        var image = new Image();
        image.onload = drawImage;
        image.src = e.target.result;
    }

    function pickImage(e) {
        var reader = new FileReader();
        reader.onload = loadImage;
        reader.readAsDataURL(e.target.files[0]);
    }

    $(function () {
        $('#imageLoader').on('change', pickImage);
    });

})();