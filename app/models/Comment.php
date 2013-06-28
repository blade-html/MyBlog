<?php


class Comment extends BaseModel
{

    /**
     *
     * @var integer
     */
    public $com_id;
     
    /**
     *
     * @var integer
     */
    public $com_uid;
     
    /**
     *
     * @var integer
     */
    public $com_pid;
     
    /**
     *
     * @var string
     */
    public $com_name;
     
    /**
     *
     * @var string
     */
    public $com_email;
     
    /**
     *
     * @var integer
     */
    public $com_artid;
     
    /**
     *
     * @var string
     */
    public $com_content;
     
    /**
     *
     * @var integer
     */
    public $com_time;
     
    /**
     *
     * @var integer
     */
    public $com_status;
     
}
