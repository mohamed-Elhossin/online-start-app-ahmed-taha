<?php



function redirct($var)
{
    echo "
<script>
    window.location.replace('http://localhost/online/$var')
</script>
";
}
