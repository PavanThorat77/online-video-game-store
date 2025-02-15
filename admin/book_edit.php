<?php
    include("includes/header.php");

    include("../includes/connection.php");

    $cq="select * from book where b_id=".$_GET['id'];

    $res=mysqli_query($link,$cq);

    $crow=mysqli_fetch_assoc($res);
?>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Update Game</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Edit Game
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                   
                                    <form role="form" action="process_book_edit.php" method="post" enctype="multipart/form-data">

                                        <input type="hidden" name="id" value="<?php echo $crow['b_id']; ?>" />

                                        <div class="form-group">
                                            <label>Game Name</label>
                                                <?php
                                                    if(isset($_SESSION['error']['bnm']))
                                                    {
                                                        echo '<p class="error">'.$_SESSION['error']['bnm'].'</p>';
                                                    } 
                                                ?>
                                            <input type="text" name="bnm" value="<?php echo $crow['b_nm'] ?>" class="form-control">
                                        </div>


                                        <div class="form-group">
                                            <label>Game Category</label>
                                            <select name="cat" class="form-control">
                                                <?php
                                                    include("../includes/connection.php");

                                                    $cq="select * from category";

                                                    $cres=mysqli_query($link,$cq);

                                                    while($crow=mysqli_fetch_assoc($cres))
                                                    {
                                                        echo '<option value="'.$crow['cat_id'].'">'.$crow['cat_nm'].'</option>';
                                                    }
                                                ?>
                                            </select>
                                        </div>

                                        
                                        <div class="form-group">
                                            <label>Description
                                                <?php
                                                    if(isset($_SESSION['error']['desc']))
                                                    {
                                                        echo '<p class="error">'.$_SESSION['error']['desc'].'</p>';
                                                    }
                                                ?>
                                            </label>
                                            <textarea name="desc" rows="3" class="form-control">
                                                 <?php echo $crow['b_desc'] ?>
                                            </textarea>
                                        </div>


                                        <div class="form-group">
                                            <label>Price</label>
                                                <?php
                                                    if(isset($_SESSION['error']['price']))
                                                    {
                                                        echo '<p class="error">'.$_SESSION['error']['price'].'</p>';
                                                    } 
                                                ?>
                                            <input type="text" name="price" value="<?php echo $crow['b_price'] ?>" class="form-control">
                                        </div>


                                        <div class="form-group">
                                            <label>Game Image</label>
                                                <?php
                                                    if(isset($_SESSION['error']['b_img']))
                                                    {
                                                        echo '<p class="error">'.$_SESSION['error']['b_img'].'</p>';
                                                    }
                                                ?>
                                            <input type="file" name="b_img" class="form-control">
                                        </div>


                                        <button type="submit" class="btn btn-default">Update Game</button>

                                        <a href="book_view.php" class="btn btn-default">Exit</a>

                                    </form>

                                    <?php
                                        unset($_SESSION['error']);
                                    ?>

                                </div>
                                <!-- /.col-lg-6 (nested) -->
                            
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

<?php
    include("includes/footer.php");
?>