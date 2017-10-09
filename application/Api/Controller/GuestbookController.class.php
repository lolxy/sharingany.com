<?php
namespace Api\Controller;
use Common\Controller\AppframeController;
class GuestbookController extends AppframeController{
	
	protected $guestbook_model;
	
	function _initialize() {
		parent::_initialize();
		$this->guestbook_model=D("Common/Guestbook");
	}
	
	function index(){
		
	}
	
	function addmsg(){
		if(!sp_check_verify_code()){
			$this->error("验证码错误！");
		}
		
		if (IS_POST) {
			if ($this->guestbook_model->create()) {
				$result=$this->guestbook_model->add();
				if ($result!==false) {
					$this->success("留言成功！");
				} else {
					$this->error("留言失败！");
				}
			} else {
				$this->error($this->guestbook_model->getError());
			}
		}
		
	}
	
	//微信小程序留言接口
	function addcontact(){
		if (IS_POST) {
			if ($this->guestbook_model->create()) {
				$result=$this->guestbook_model->add();
				if ($result!==false) {
					//$this->success("留言成功！");
					$data=array(
						"info"=>"提交成功",
						"status"=>1
					);
					exit(json_encode($data));
				} else {
					//$this->error("留言失败！");
					$data=array(
						"info"=>"提交失败",
						"status"=>0
					);
					exit(json_encode($data));
				}
			} else {
				$this->error($this->guestbook_model->getError());
			}
			
		}
		
	}
	
}