<?php



    $array = array('a','b','c','d','e','f','g','h','i','j');



    $total_data = count($array);        // COUNTING TOTAL ARRAY

    // pagination

    $per_page = 2;                      // DATA SHOWING PER PAGE

    $page = intval($_GET['page']);      // GETTING PAGE NUMBER FROM URL



    if(empty($page) || $page==1) {

        $start_val = 0;

        $end_val = $per_page - 1;

    }

    else {

        $start_val = ($page * $per_page) - $per_page;

        $end_val = $start_val + ($per_page - 1);

    }

    // pagination





    // Printing data

    for($i=$start_val;$i<=$end_val;$i++){

        echo $array[$i].' ';

    }



    // Pagination

    $less_than = $total_data/$per_page;

    if($less_than>intval($less_than)) $less_than = $less_than + 1;



    if($total_data>1) {

        echo '<div class="pagination">';

        echo ($page-1)>0?'<a href="?page='.($page-1).'">Previous</a>&nbsp;':'Previous&nbsp;';

        for($i=1;$i<=$less_than;$i++){

            if($page==$i) echo '<a class="paginator linkno">';

            else echo '<a href="?page='.$i.'" class="paginator">';

            echo $i;

            echo '</a>&nbsp;';

        }

        echo ($page+1)<=$less_than?'<a href="?page='.($page+1).'">Next</a>':'Next';

        echo '</div>';

    }

    // Pagination

?>
