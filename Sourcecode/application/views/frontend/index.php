<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="<?php echo base_url(); ?>images/favicon.ico">

    <title>Trip Truly Hagiang, Local inspire</title>

    <!-- Bootstrap core CSS -->
    <link href="<?php echo base_url(); ?>css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>css/datetimepicker.min.css" rel="stylesheet">

    <!-- METRO UI CSS 2.0 FONTS -->
    <link href="http://localhost/tripexpress/css/iconFont.min.css" rel="stylesheet">

    <!-- Login form CSS -->
    <link href="<?php echo base_url(); ?>css/frontend.css" rel="stylesheet">
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="<?php echo base_url(); ?>js/ie10-viewport-bug-workaround.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>js/jquery.min.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
    
    <div class="container">
      <div class="header clearfix">
        <nav>
          <ul class="nav nav-pills pull-right">

            <li role="presentation" class="active"><a href="#">Home</a></li>
			      <li role="presentation"  ><a href="Login">Agent</a></li>            
            <li role="presentation"><a href="#">Support</a></li>

          </ul>
        </nav>
        <h3 class="text-muted">
        <a href="#"><img src="<?php echo base_url(); ?>images/logo.png"  /></a>
		    </h3>
      </div>
    </div> <!-- /container -->

      <div class="jumbotron">
        <div class="container">
              <div class="row">
                  <div class="col-sm-6 col-md-7">
                      
                  </div>
                  <div class="col-sm-6 col-md-5 search_box">
                          <h4 ><?php echo lang('Search'); ?></h4>
                          <hr/>
                          <!-- form -->
                         <form action="booking/step_one" method="post"> 
                          <div class="col-sm-4 col-md-6">
                            <div class="form-group">
                              <label for="city"><?php echo lang('Departure city'); ?></label>
                              <select class="form-control" name="from" id="from" >
                                <option value="0"></option>
                                <?php foreach($cities as $city ):?>
                                <option value="<?php echo $city->destination_id ?>"<?php echo set_select('from',  $city->destination_id); ?>><?php echo $city->city ?></option>
                              <?php endforeach; ?>
                              </select>
                              <?php echo form_error('from'); ?>
                            </div>
                          </div>

                          <div class="col-sm-4 col-md-6">
                            <div class="form-group">
                              <label for="city"><?php echo lang('Arrival city'); ?></label>
                               <select class="form-control" name="to" id="to" value="<?php echo set_value('city'); ?>">
                                  <option value="0"></option>
                                  <?php foreach($cities as $city ):?>
                                <option value="<?php echo $city->destination_id ?>"<?php echo set_select('to',  $city->destination_id); ?>><?php echo $city->city ?></option>
                              <?php endforeach; ?>
                              </select>
                            </div>
                          </div>

                          <div class="col-sm-4 col-md-6">
                          <label><?php echo lang('Departure date'); ?> <span class="text-muted">(<?php echo lang('Optional'); ?>)</span></label>
                            <div class="form-group date" id="datepicker1">
                               <input type="text" class="form-control" name="from_date" id="from_date" data-date-format="YYYY-MM-DD" value="">
                                <span class="input-group-addon"><span class="icon-calendar"></span></span>
                                <script type="text/javascript">
                                    $(function () {
                                      $('#datepicker1').datetimepicker({
                                        pickTime: false,
                                        useCurrent: false
                                      });
                                    });
                                </script>
                            </div>
                          </div>

                          <div class="col-sm-4 col-md-6">
                          <label><?php echo lang('Return date'); ?></label>
                            <div class="form-group date" id="datepicker2">
                               <input type="text" class="form-control" name="from_back_date" id="from_back_date" data-date-format="YYYY-MM-DD" value="">
                                <span class="input-group-addon"><span class="icon-calendar"></span></span>
                                <script type="text/javascript">
                                    $(function () {
                                      $('#datepicker2').datetimepicker({
                                        pickTime: false,
                                        useCurrent: false
                                      });
                                    });
                                </script>
                            </div>
                          </div>


                         <!--  <div class="col-sm-3 col-md-3">
                              <label for="booked_seats"><?php echo lang('Tickets'); ?></label>
                                <select class="form-control">
                                  <option>1</option>
                                  <option>2</option>
                                  <option>3</option>
                                  <option>4</option>
                                  <option>5</option>
								                  <option>6</option>
                								  <option>7</option>
                								  <option>8</option>
                                </select>
                          </div> -->
<!--                            <div class="col-sm-3 col-md-3">
                               
                          </div> -->
                          <div class="col-sm-12 col-md-12"><hr/>
                            <!-- s?a button thành submit -->
                        		<button type="submit" id="check" class="btn btn-success" value="submit"><span class="icon-search"></span> <?php echo lang('Check available ticket'); ?></button>
                          </div>

                  </div>
              </form>
              </div>
        </div>
      </div>

      <div class="container">
      <div class="row">
      </div>
        

      <footer class="footer">
        <p>&copy; Truly Hagiang 2018</p>
      </footer>

    </div> <!-- /container -->


    <script src="<?php echo base_url(); ?>/js/bootstrap.min.js"></script>
    <script src="<?php echo base_url(); ?>/js/docs.min.js"></script>
    <script src="<?php echo base_url(); ?>/js/moment.js"></script>
    <script src="<?php echo base_url(); ?>/js/datetimepicker.js"></script>
   