<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload file</title>
</head>

<body>
    <form action="/upload" method="post" enctype="multipart/form-data">
        {{ @csrf_field() }}
        <label for="">Upload file : </label><br />
        <input type="file" name="file">
        <button type="submit">Submit</button>
    </form>
</body>

</html>