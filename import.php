<?php
include 'config/koneksi.php';
include 'config/config.php';

session_start();

$query = "SELECT * FROM npwp ORDER BY id DESC";
$result = mysqli_query($conn, $query);

$data = [];

if ($result) {
    while ($row = mysqli_fetch_assoc($result)) {
        $data[] = $row;
    }
    mysqli_free_result($result);
} else {
    echo "Error executing query: " . mysqli_error($conn);
}




?>


<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="<?= baseurl ?>/assets/css/style.css">
    <link rel="stylesheet" href="<?= baseurl ?>/assets/css/custom.css">
    <link rel="stylesheet" href="<?= baseurl ?>/assets/css/loader.css">

    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.4.1/css/responsive.bootstrap.min.css">
</head>

<body>

    <section class="full-height mt-5" id="table-section">
        <div class="container">
            <div class="row list-app-heading mx-2">
                <div class="col-sm-12">
                    <div class="d-flex align-items-center justify-content-between">
                        <div class="col-sm-6">
                            <div class="d-flex flex-column">
                                <h1><strong>Data Langanan</strong> <a class="text-black" href="<?= baseurl ?>/trigger.html"><i class="fas fa-arrow-left"></i></a></h1>
                            </div>
                        </div>
                        <div class="col-sm-6 d-flex justify-content-end">
                            <button id="fetch-data" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#importModal">Import data</button>
                            <a href="download_ex_import.php" class="btn btn-warning text-white mx-2">Download contoh Import</a>
                            <button class="btn btn-secondary text-white" data-bs-toggle="modal" data-bs-target="#pelanggan"><i class="fas fa-plus"></i></button>
                        </div>
                    </div>
                    <!-- Add a search form -->
                    <form method="GET" action="" class="d-flex mt-4">
                        <input id="custom-search" class="form-control my-search main-radius" type="text" name="search" placeholder="Search..." value="<?php echo isset($_GET['search']) ? $_GET['search'] : ''; ?>">
                        <!-- <button type="submit" class="btn btn-danger main-radius"> Search</button> -->
                    </form>

                </div>
            </div>

            <div class="row mt-5">
                <div class="col-sm-12 ">

                    <?php if (isset($_SESSION['message'])) : ?>
                        <div class="alert alert-success">
                            <?= $_SESSION['message'] ?>
                        </div>
                        <?php session_destroy() ?>
                    <?php endif; ?>
                    <table id="data-table" class="table table-striped text-nowrap">
                        <thead>
                            <tr>
                                <th>Kode</th>
                                <th>Nama</th>
                                <th>Npwp</th>
                                <th>#</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($data as $row) : ?>
                                <tr class="align-middle">
                                    <td><?= $row['kode'] ?></td>
                                    <td><?= $row['nama'] ?></td>
                                    <td><?= $row['npwp'] ?></td>
                                    <td>
                                        <a class="btn btn-light" title="hapus " onclick="return confirm('yakin ? ') " href="delete.php?npwp=<?= $row['npwp'] ?>">
                                            <i class="fas fa-trash text-danger"></i>
                                        </a>
                                    </td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>


    <!-- Modal -->
    <div class="modal fade" id="pelanggan" tabindex="-1" aria-labelledby="pelangganLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="pelangganLabel">Pelanggan</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="store.php" method="post">
                        <div class="form-group mt-3">
                            <label class="my-2" for="kode"><small class="text-secondary">kode</small></label>
                            <input type="text" class="form-control" name="kode" id="kode">
                        </div>
                        <div class="form-group mt-3">
                            <label class="my-2" for="nama"><small class="text-secondary">nama</small></label>
                            <input type="text" class="form-control" name="nama" id="nama">
                        </div>
                        <div class="form-group mt-3">
                            <label class="my-2" for="npwp"><small class="text-secondary">npwp</small></label>
                            <input type="text" class="form-control" name="npwp" id="npwp">
                        </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-danger" name="simpan">Simpan</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="importModal" tabindex="-1" aria-labelledby="importModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="importModalLabel">Import data </h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="do_import.php" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <input type="file" name="npwp" class="form-control">
                        </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-danger" name="import">Import</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js" integrity="sha512-3gJwYpMe3QewGELv8k/BX9vcqhryRdzRMxVfq6ngyWXwo03GFEzjsUm8Q7RZcHPHksttq7/GFoxjCVUjkjvPdw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://pricelist.catur-putraharmonis.com/assets/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.4.1/js/dataTables.responsive.min.js"></script>


    <script>
        dataTable = $('#data-table').DataTable({
            responsive: true,
            order: false,
        });

        // Event listener for custom search input
        $('#custom-search').on('keyup', function() {
            dataTable.search(this.value).draw();
        });
    </script>


</body>

</html>