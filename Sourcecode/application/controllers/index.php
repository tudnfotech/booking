<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Index extends CI_Controller {
    function __construct()
	{
		parent::__construct();
        $this->load->helper('language');
		$this->lang->load('bookings', $this->session->userdata('language'));
	}

	function index()
	{
		$this->load->model('booking');
        $this->load->model('search');
      	$data['cities'] = $this->booking->list_cities();
	   	$data['title'] = 'Welcome';
	   	$this->load->view('frontend/index', $data);
	}
	public function back()
	{
		redirect('frontend/index', 'refresh');
	}
    
}


?>