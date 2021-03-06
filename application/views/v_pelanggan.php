  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Data pelanggan</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo base_url('dashboard')?>">Home</a></li>
              <li class="breadcrumb-item active">Data pelanggan</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-12">
          <div class="card">
          </div>
          <!-- /.card -->

          <div class="card">
            <div class="card-header">
              <h3 class="card-title"><a href="<?php echo base_url('pelanggan/tambah_pelanggan')?>"><button class="btn btn-block btn-outline-primary"><b><i class="fas fa-plus"></i> Tambah Data</b></button></a>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>No</th>
                  <th>Nama</th>
                  <th>Alamat</th>
                  <th>Telepon</th>
                   <th colspan="2"><center>Aksi</center></th>
                </tr>
                </thead>
               
                <?php 
                  $no=1;
                  foreach($pelanggan as $pelanggan) : 
                ?>

                <tbody>
                <tr>
                  <td><?php echo $no++;                       ?></td>
                  <td><?php echo $pelanggan->nama_pelanggan       ?></td>
                  <td><?php echo $pelanggan->alamat_pelanggan     ?></td>
                  <td><?php echo $pelanggan->telepon_pelanggan    ?></td>
                 <td> <center><a href="<?= base_url('pelanggan/ubah_pelanggan') ?>?id=<?= $pelanggan->id_pelanggan ?>" class="btn btn-outline-warning"> Ubah </a></center></td>
                  <td><center><a href="<?= base_url('pelanggan/hapus_pelanggan') ?>?id=<?= $pelanggan->id_pelanggan ?>" class="btn btn-outline-danger"> Hapus </a></center></td>
                </tr>
                </tbody>
                <?php endforeach; ?> 
              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->