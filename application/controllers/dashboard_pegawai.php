<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class dashboard_pegawai extends CI_Controller {

	public function __construct()
	{
	parent::__construct();

	if($this->session->userdata('role_id') != '1'){
			$this->session->set_flashdata('message','<div class="alert alert-danger alert-dismissible fade show" role="alert">Silahkan Login Dahulu<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button></div>');
			redirect('auth/login');
		}

	}

	public function index()
	{
		$this->load->view('templates_pegawai/header');
		$this->load->view('templates_pegawai/sidebar');
		$this->load->view('dashboard_pegawai');
		$this->load->view('templates_pegawai/footer');
	}
}
