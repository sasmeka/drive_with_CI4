<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class Detail_Project_Saya extends BaseController
{
  public function __construct()
  {
    $this->db = \Config\Database::connect();
  }
  public function index()
  {
    $id = $this->request->getPost("id_proyek");
    if ($id == "") {
      $id2 = session()->get('id_proyek');
      $data = [
        'data' => $this->db->query("SELECT a.ukuran_file,a.`id_pembuat`,a.`judul`,a.`id`,a.`nama_file`,a.`pesan`,c.`fullname`,b.`nama`,b.`tahun`,a.`create_at` FROM detail_data_project a LEFT JOIN data_project b ON a.`id_project`=b.`id` LEFT JOIN users c ON a.`id_pembuat`=c.`id` WHERE a.`id_project`=$id2")->getResult(),
        'data_project' => $this->db->query("SELECT * FROM data_project WHERE id=$id2")->getResult(),
        'menu' => 'detail_project_saya'
      ];
    } else {
      if ($id != session()->get('id_proyek')) {
        session()->set('id_proyek', $id);
        $id2 = session()->get('id_proyek');
        $data = [
          'data' => $this->db->query("SELECT a.ukuran_file,a.`id_pembuat`,a.`judul`,a.`id`,a.`nama_file`,a.`pesan`,c.`fullname`,b.`nama`,b.`tahun`,a.`create_at` FROM detail_data_project a LEFT JOIN data_project b ON a.`id_project`=b.`id` LEFT JOIN users c ON a.`id_pembuat`=c.`id` WHERE a.`id_project`=$id2")->getResult(),
          'data_project' => $this->db->query("SELECT * FROM data_project WHERE id=$id2")->getResult(),
          'menu' => 'detail_project_saya'
        ];
      } else {
        $id2 = session()->get('id_proyek');
        $data = [
          'data' => $this->db->query("SELECT a.ukuran_file,a.`id_pembuat`,a.`judul`,a.`id`,a.`nama_file`,a.`pesan`,c.`fullname`,b.`nama`,b.`tahun`,a.`create_at` FROM detail_data_project a LEFT JOIN data_project b ON a.`id_project`=b.`id` LEFT JOIN users c ON a.`id_pembuat`=c.`id` WHERE a.`id_project`=$id2")->getResult(),
          'data_project' => $this->db->query("SELECT * FROM data_project WHERE id=$id2")->getResult(),
          'menu' => 'detail_project_saya'
        ];
      }
    }
    return view('manajemen_detail_data_project', $data);
  }
  public function tambah()
  {
    $id_pembuat = user()->id;
    $id_project = session()->get('id_proyek');
    $judul = $this->request->getPost("judul");
    $pesan = $this->request->getPost("pesan");
    $nama_ori = $_FILES['file_project']['name'];

    if ($nama_ori != '') {
      //$request = \Config\Services::request();
      $file = $this->request->getFile('file_project');
      $name = $file->getName(); // Mengetahui Nama File
      $size_kb = $file->getSize('kb'); // Mengetahui Ukuran File dalam kb
      $name = $id_project . ' - ' . $id_pembuat . ' - ' . date("Y-m-d h.i.sa") . ' - ' . $name;

      //$namabaru = $file->getRandomName();//define nama fiel yang baru secara acak

      helper('filesystem'); // Load Helper File System
      $direktori = WRITEPATH . '../public/file/'; //definisikan direktori upload
      $map = directory_map($direktori, FALSE, TRUE); // List direktori

      /* Cek File apakah ada */
      foreach ($map as $key) {
        if ($key == $name) {
          delete_files($direktori, $name); //Hapus terlebih dahulu jika file ada
        }
      }

      $upload = $this->request->getFile('file_project');
      $ex_upload = $upload->move(WRITEPATH . '../public/file/', $name);

      if ($ex_upload) {
        $query = $this->db->query("INSERT INTO detail_data_project (nama_file,judul,create_at,id_pembuat,pesan,id_project,ukuran_file) VALUES ('" . $name . "','$judul',now(),$id_pembuat,'$pesan',$id_project,$size_kb)");
        session()->setFlashdata("pesan", "Berhasil Menambahkan File");
      } else {
        session()->setFlashdata("pesan-danger", "Gagal Menambahkan File");
      }
    } else {
      session()->setFlashdata("pesan-danger", "Harus menyertakan file");
    }
    return redirect()->to('/detail_project_saya');
  }
  public function hapus()
  {
    $id = user()->id;
    $id_file = $this->request->getPost("id_file");
    $data = $this->db->query("SELECT * FROM detail_data_project where id=$id_file")->getResult();
    unlink(FCPATH . 'file/' . $data[0]->nama_file);
    $this->db->query("DELETE FROM detail_data_project where id=$id_file");
    session()->setFlashdata("pesan-danger", "File proyek berhasil dihapus");
    return redirect()->to('/detail_project_saya');
  }
  public function download()
  {
    $id_file = $this->request->getPost("id_file");
    $data = $this->db->query("SELECT * FROM detail_data_project where id=$id_file")->getResult();
    return $this->response->download(FCPATH . 'file/' . $data[0]->nama_file, null);
  }
}
